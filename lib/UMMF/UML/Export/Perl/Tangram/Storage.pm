package UMMF::UML::Export::Perl::Tangram::Storage;

use warnings;
use strict;

our $AUTHOR = q{ kstephens@users.sourceforge.net 2004/03/29 };
our $VERSION = do { my @r = (q$Revision: 1.18 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

=head1 NAME

UMMF::UML::Export::Perl::Tangram::Storage - Tangram Storage bridge for UMMF generated Perl code.

=head1 SYNOPSIS

=head1 DESCRIPTION

This package provides tools for managing Tangram Schemas.

=head1 USAGE

use UMMF::UMF::Export::Perl::Tangram::Storage;

$cls->get('name' => 'foo');
$cls->get_or_new('name' => 'foo');
$cls->get_or_error('name' => 'foo');
$obj->__storage_insert();
$obj->__storage_erase();
$obj->__storage_update();

=head1 EXPORT

None exported.

=head1 TO DO

=over 4

=back

=head1 AUTHOR

Kurt Stephens, kstephens@users.sourceforge.net 2004/03/29

=head1 SEE ALSO

L<UMMF::UML::Export::Perl::Tangram|UMMF::UML::Export::Perl::Tangram>

=head1 VERSION

$Revision: 1.18 $

=head1 METHODS

=cut

#######################################################################

use base qw(UMMF::UML::MetaMetaModel::Object);

#######################################################################

use UMMF::UML::Export::Perl::Tangram::Schema;

use Tangram;
use Tangram::Core;
use Tangram::Storage;
use Tangram::Schema;
use Tangram::Relational;
use Tangram::mysql;
use DBI;
use Carp qw(confess croak);

#######################################################################


my %empty; # DO NOT MODIFY.

# Defaults for connection
my @opts_name = qw(dsn driver host port db user pass opts);
our %connect_opts;


#######################################################################


sub initialize
{
  my ($self) = @_;

  # Initialize connect defaults.
  for my $n ( @opts_name ) {
    $connect_opts{$n} ||= $ENV{'UMMF_STORAGE_' . uc($n)};
  }
  $connect_opts{'pass'}   ||= undef;
  $connect_opts{'opts'}   ||= '';

  # schema.pl generated by UMMF::UML::Export::Perl::Tangram::Schema.
  $self->{'schema_hash_dir'} ||= $ENV{'UMMF_STORAGE_SCHEMA_DIR'} || './gen/perl';
  $self->{'schema_hash_pkg'} ||= $ENV{'UMMF_STORAGE_SCHEMA'};
  $self->{'schema_hash_file'} = $self->{'schema_hash_pkg'};
  if ( $self->{'schema_hash_pkg'} =~ '::' ) {
    $self->{'schema_hash_file'} =~ s@::@/@sg;
    $self->{'schema_hash_file'} = "$self->{schema_hash_dir}/$self->{schema_hash_file}.pm";
    $self->{'schema_var'} = '$schema';
  } else {
    $self->{'schema_hash_pkg'} = undef;
    $self->{'schema_var'} = '$main::schema';
  }
  
  
  # Initalize state.
  $self->{'cache'} = { };
  $self->{'schema'} = undef;
  $self->{'storage'} = undef;

  # Debugging.
  $self->{'debug'} = $ENV{'UMMF_STORAGE_DEBUG'} || 0
    unless defined $self->{'debug'};

  print STDERR "pid $$: New $self$$\n" if $self->{'debug'};

  $self;
}


=head2 flush_get_cache

  $storage->flush_get_cache(@cls);

Flushes the get cache for all classes in C<@cls>.

  $storage->flush_get_cache();

Flushes the entire get cache.

=cut
sub flush_get_cache
{
  my ($self, @cls) = @_;

  if ( @cls ) {
    for my $cls ( @cls ) {
      delete $self->{'cache'}{ref($cls) || $cls};
    }
  } else {
    $self->{'cache'} = { };
  }

  $self;
}


=head2 flush_cache

  $storage->flush_cache();

Flushes the entire get cache and disassembles any objects in the storage's
object cache that may have circular references.

This is typically done at the end of an interaction (i.e via CGI, etc.) in
a server-type application.

=cut
#'emacs
sub flush_cache
{
  my ($self, @cls) = @_;

  $self->flush_get_cache(@cls);

  my $storage = $self->{'storage'};
  if ( $storage ) {
    # $DB::single = 1;

    # Get a list of all objects to disassemble,
    # i.e. objects that may be pinned down by references
    # in the storage cache.
    my @objects = grep($_, values %{$storage->{objects}});

    # Unload the objects from the Tangram::Storage.
    $storage->unload;

    # Disassemble them, if possible.
    # print STDERR "Disassembling " . scalar @objects . " objects\n";

    for my $obj ( @objects ) {
      untie(%$obj);

      $obj->__ummf_disassemble()
	if UNIVERSAL::can($obj, '__ummf_disassemble');
    }

    # print STDERR "Done.\n";
  }

  $self;
}


#######################################################################
# DBD object accessor.
#


=head2 connect_opts

  my ($dsn, $user, $pass) = $storage->connect_opts();

Returns a list of parameters suitable for DBI->connect($dsn, $user, $pass).

=cut
sub connect_opts
{
  my ($self) = @_;

  # Select defaults or specifics.
  my %opts = (
	      # Super defaults.
	      'driver' => 'mysql',
	      'host'   => 'localhost',
	      'db'     => 'test',
	      'opts'   => '',
	      'port'   => '',
	     );
  for my $n ( @opts_name ) {
    $opts{$n} = $connect_opts{$n}
      if $connect_opts{$n};
    $opts{$n} = $self->{$n}
      if defined $self->{$n};
  }

  # Compute dsn from common opts: host, db.
  $opts{'dsn'} ||= "dbi:{driver}:{host}{db}{port}{opts}";
  $opts{'dsn'} =~ s/{driver}/$opts{'driver'}                           /sge;
  $opts{'dsn'} =~ s/{host}/  $opts{'host'} ? "host=$opts{host};"   : ''/sge;
  $opts{'dsn'} =~ s/{port}/  $opts{'port'} ? "port=$opts{port};"   : ''/sge;
  $opts{'dsn'} =~ s/{db}/    $opts{'db'}   ? "database=$opts{db};" : ''/sge;
  $opts{'dsn'} =~ s/{opts}/  $opts{'opts'} ? "$opts{opts};"        : ''/sge;

  if ( $self->{'debug'} ) {
    no warnings;
    print STDERR "pid $$: Storage: DSN: $opts{dsn} $opts{user} $opts{pass}\n";
  }
  
  # Return connection parameters for 
  # use with Tangram::Storage->connect() and DBI->connect().
  (
   $opts{'dsn'},
   $opts{'user'},
   $opts{'pass'},
  );
}


=head2 set_dbh

  $storage->set_dbh($dbh);

Sets a cached DBD connection, using C<connect_opts()>.

C<$dbh->disconnect> is not called from C<$storage->disconnect>.

=cut
sub set_dbh
{
  my ($self, $dbh) = @_;

  my $x = \$self->{'dbh'};
  no warnings;

  if ( $$x ne $dbh ) {
    if ( $$x ) {
      $$x->disconnect if $self->{'dbh_owned'} = 1;
      $$x = undef;
    }
    $$x = $dbh;
  }
  $self->{'dbh_owned'} = 0;

  $self;
}


=head2 dbh

  my $dbh = $storage->dbh();

Returns a cached DBD connection, using C<connect_opts()>.

If C<$dbh> was not specified by C<set_dbh>, it is subject
to $dbh->disconnect when $storage->disconnect is called.

=cut
sub dbh
{
  my ($self) = @_;

  my $x = \$self->{'dbh'};
  unless ( $$x ) {
    my @opts = $self->connect_opts;
    # DBI->trace(1);
    $$x = DBI->connect(@opts) 
      || confess("Cannot connect to db $opts[0] $opts[1]: $!");
    $self->{'dbh_owned'} = 1;

    # $DB::single = 1;
  }

  $$x;
}


#######################################################################
# Tangram::Schema object accessor.
#


my %use;
my %schema_hash_cache;
sub schema_hash_cached
{
  my ($self) = @_;

  my $x = \$schema_hash_cache{$self->{'schema_hash_pkg'} || $self->{'schema_hash_file'}};
  unless ( $$x ) {
    print STDERR "pid $$: Loading $self->{schema_hash_pkg}\n" if $self->{'debug'};

    if ( $self->{'schema_hash_pkg'} ) {
      unless ( $use{$self->{'schema_hash_pkg'}} ++ ) {
	eval('use ' . $self->{'schema_hash_pkg'} . ';');
	# $DB::single = 1 if $@;
	confess($@) if $@;
      }

      $$x = $self->{'schema_hash_pkg'}->tangram_schema_hash() ||
	confess("no \$main::schema defined by $self->{schema_hash_pkg}");
    } else {
      # This should not be used anymore.
      # Force reload by not allowing updates to %INC.
      $main::schema = undef;

      # Save %INC.
      my %INC_ = %INC;

      require $self->{'schema_hash_file'};

      # Restore %INC.
      %INC = %INC_;
      
      $$x = $main::schema || 
	confess("no \$main::schema defined by $self->{schema_hash_file}");
    
      $main::schema = undef;
    }
    
    my $s = $$x;
    # Find all the required classes.

    # Tangram types.
    my @type = values %{$s->{'.ummf'}{'TYPES'}};
    @type = map(ref($_) ? $_->[1] : $_, @type);

    # Problem-domain classes.
    my @cls = keys %{$s->{'classes'}};

    # Make them all unique.
    my @use = (@type, @cls);
    my %use = map(($_ => $_), @use);

    # Filter out naughty types.
    delete $use{'Tangram::IntrHash'};
    delete $use{'Tangram::IntrRef'};

    @use = sort grep($_, values %use);
    
    # Use them all.
    my $expr = join("\n", map(qq{use $_;}, @use));
    # print STDERR "$expr\n";
    eval $expr;
    die("In:\n$expr\n$@") if $@;
  }

  $$x;
}


sub schema_hash
{
  my ($self) = @_;

  my $x = \$self->{'schema_hash'};
  unless ( $$x ) {
    # Load schema hash from schema_hash_file.
    # $DB::single = 1;
    $$x = $self->schema_hash_cached();
    # $DB::single = 1;
  }

  $$x;
}


my %schema_cache;
sub schema_cached
{
  my ($self) = @_;

  my $x = \$schema_cache{$self->{'schema_hash_pkg'} || $self->{'schema_hash_file'}};
  unless ( $$x ) {
    my $schema_hash = $self->schema_hash;
    my $dbh = $self->dbh;
    my $do;

    # $DB::single = 1;

    # Load/store class ids in DB!
    my $s = UMMF::UML::Export::Perl::Tangram::Schema->new();
    $s->manage_class_ids(
		       $schema_hash,
		       $do,
		       $dbh,
		      );
    # $DB::single = 1;

    eval {
      $$x = Tangram::Schema->new($schema_hash, 
				 #$self->dbh # future class/id mapping table.
				);
      print STDERR "pid $$: Created Tangram::Schema from $self->{schema_hash_pkg} : $$x\n" if $self->{'debug'};
      # $DB::single = 1;
    };
    if ( $@ ) {
      $DB::single = 1;
      confess($@);
    }
  }

  $$x;
}



sub schema
{
  my ($self) = @_;

  my $x = \$self->{'schema'};
  unless ( $$x ) {
    $$x = $self->schema_cached();
  }

  $$x;
}


#######################################################################
# Tangram::Storage object accessor.
#


sub storage
{
  my ($self) = @_;

  my $x = \$self->{'storage'};
  unless ( $$x ) {
    # $DB::single = 1;

    eval {
      my ($dsn, $user, $pass) = $self->connect_opts();
      my $class;
      $class = 'Tangram::mysql' if $dsn =~ /:mysql/;
      $class ||= 'Tangram::Relational';
      $$x = $class->connect($self->schema,
			    $dsn, $user, $pass,
			    {
			     'dbh' => $self->dbh,
			    }
			   );
      
      print STDERR "pid $$: Created Tangram::Storage: $$x\n" if $self->{'debug'};
    };
    if ( $@ ) {
      confess($@);
    }
  }

  $$x;
}


#######################################################################


=head2 insert

  $self->insert(@objs);

Inserts all objects in C<@obj> into the storage.
Caching is flushed for all objects of the class of the objects inserted..

=cut
sub insert
{
  my ($self, @obj) = @_;

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  $self->flush_get_cache(@obj) if @obj;

  $self->storage->insert(@obj);
}


=head2 update

  $self->update(@objs);

Updates all objects in C<@obj> into the storage.
Caching is flushed for all objects of the class of the objects inserted..

=cut
sub update
{
  my ($self, @obj) = @_;

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  $self->flush_get_cache(@obj) if @obj;

  $self->storage->update(@obj);
}


=head2 update_or_insert

  $self->update_or_insert(@objs);

Updates all objects in C<@obj> into the storage.
Any objects which are not already inserted into the storage are 
inserted.
Caching is flushed for all objects of the class of the objects inserted..

=cut
sub update_or_insert
{
  my ($self, @obj) = @_;

  my $storage = $self->storage;
  for my $obj ( @obj ) {
    # $DB::single = 1;

    if ( $storage->id($obj) ) {
      $self->update($obj);
    } else {
      $self->insert($obj);
    }
  }

  $self;
}


=head2 erase

  $self->erase(@objs);

Erases all objects in C<@obj> from the storage.
Caching is flushed for all objects of the class of the objects erased.

=cut
sub erase
{
  my ($self, @obj) = @_;

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  $self->flush_get_cache(@obj) if @obj;

  $self->storage->erase(@obj);
}


=head2 load

  my @objs = $self->load(@ids);

Loads all objects from storage via unique object ids.

=cut
sub load
{
  my ($self, @id) = @_;

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  $self->storage->load(@id);
}


=head2 id

  my $id = $self->id($obj);
  my @ids = $self->id(@objs);

Returns the unique id for the object in storage.

=cut
sub id
{
  my ($self, @obj) = @_;

  $self->storage->id(@obj);
}


=head2 class

  my $cls_expr = $self->class($cls);

Returns a new class expression that represents all objects in the storage that
are of the class C<$cls>.

=cut
sub class
{
  my ($self, @cls) = @_;

  # $DB::single = 1;
  $self->storage->remote(@cls);
}


=head2 select

  my @objs = $self->select($cls_expr, $filter, @opts);

Returns all objects of C<$cls_expr> that match C<$filter>.

=cut
sub select
{
  my ($self, @args) = @_;

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  $self->storage->select(@args);
}


=head2 cursor

  my $cursor = $self->cursor($cls_expr, $filter, @opts);

Returns an iterator of all objects of C<$cls_expr> that match C<$filter>.

=cut
sub cursor
{
  my ($self, @args) = @_;

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  $self->storage->cursor(@args);
}


=head2 count

  my $count = $self->count($filter, @opts);

Returns the count of all objects that match C<$filter>.

=cut
sub count
{
  my ($self, @args) = @_;

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  $self->storage->count(@args);
}


=head2 sum

  my $sum = $storage->sum($expr, $filter);
  my @sums = $storage->sum([$expr1, $expr2], $filter);

Returns the sum of all C<$expr> values of all objects that match C<$filter>.

=cut
sub sum
{
  my ($self, @args) = @_;

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  $self->storage->sum(@args);
}


#######################################################################


=head2 disconnect

  $storage->disconnect();

Flushes the get cache.  Disconnects the underlying storage and any database connections.

=cut
sub disconnect
{
  my ($self) = @_;

  # $DB::single = 1;
  $self->flush_cache;

  my $x = \$self->{'storage'};
  if ( $$x ) {
    $$x->disconnect();
    $$x = undef;
  }

  $x = \$self->{'dbh'};
  if ( $$x && $self->{'dbh_owned'} ) {
    $$x->disconnect();
    $$x = undef;
  }

  $self->{'schema_hash'} = undef;
  $self->{'schema'} = undef;

  $self;
}


=head2 DESTROY

Calls C<disconnect()> upon GC.

=cut
sub DESTROY
{
  my ($self) = @_;

  $self->disconnect;
}


#######################################################################
# Interface to meta-object layer.
#

=head2 get_all

  my $objs = $self->get_all($cls, \%keys);
  my @objs = $self->get_all($cls, \%keys);


Returns all matching object of class C<$cls> that match C<%keys> exactly.

=cut
sub get_all
{
  my ($self, $cls, $keys) = @_;

  $self->_get_all($cls, $keys);
}


=head2 get

  my $objs = $self->get_all($cls, \%keys);

Returns one matching object of class C<$cls> that match C<%keys> exactly.
If more than one object matches, an error is thrown via C<die()>.
Any object found is stored in a cache.

=cut
sub get
{
  my ($self, $cls, $keys) = @_;

  my $objs = $self->_get_all($cls, $keys);

  if ( @$objs > 1 ) {
    my @keys = %$keys;
    local $" = ' ';
    confess("Non-unique get $cls with @keys, found " . @$objs);
  }

  $objs->[0];
}


=head2 get_force

  my $objs = $self->get_foce($cls, \%keys);

Returns one matching object of class C<$cls> that match C<%keys> exactly.
If more than one object matches, an error is thrown via C<die()>.
No caching is used.

=cut
sub get_force
{
  my ($self, $cls, $keys) = @_;

  my $objs = $self->_lookup_storage($cls, $keys, 2);

  if ( @$objs > 1 ) {
    local $" = ' ';
    die("Non-unique get $cls with @{%$keys}, found " . @$objs);
  }

  $objs->[0];
}


=head2 get_or_error

  my $objs = $self->get_foce($cls, \%keys);

Returns one matching object of class C<$cls> that match C<%keys> exactly.
If no object is found, an error is thrown via C<die()>.
Caching is used.

=cut
sub get_or_error
{
  my ($self, $cls, $keys) = @_;

  my $obj;
  unless ( $obj = $self->get($cls, $keys) ) {
    local $" = ' ';
    my @keys = %$keys;
    $DB::single = 1;
    die("Cannot get $cls with @keys");
  }

  $obj;
}


=head2 get_or_new

  my $objs = $self->get_or_new($cls, \%keys, \%inits);

Returns one matching object of class C<$cls> that match C<%keys> exactly.
If no object is found, a new object is created with the C<%keys> and C<%inits> and is inserted in the storage.
Caching is used.

=cut
sub get_or_new
{
  my ($self, $cls, $keys, $inits) = @_;

  # Lookup in cache.
  my ($cachep, $cache) = $self->_lookup($cls, $keys);
  my $obj0 = $cache && $cache->[0];

  # $DB::single = 1;

  # If no object exists, install a new one.
  my $install_cache;
  unless ( $obj0 ) {
    # Create new object.
    $obj0 = $cls->new(%$keys, %{$inits || \%empty});

    if ( 1 ) {
      my @keys = %$keys;
      # local $" = ' ';
      # print STDERR "$self get_or_new $cls(@keys) => new $obj0\n";
    }

    # Schedule object for storage.
    $self->_insert_storage($obj0);

    # Force installation of new object in cache.
    $install_cache = 1;
  }

  # No cache entry or force cache install?
  if ( $install_cache || ! $$cachep ) {
    # Make a new main cache entry.
    $self->_install_cache($cls, $keys, $cachep, [ $obj0 ]);
  }

  # Return found or new object.
  $obj0;
}



sub _get_all
{
  my ($self, $cls, $keys) = @_;

  no warnings;

  # Lookup in cache.
  my ($cachep, $cache) = $self->_lookup($cls, $keys);
  my $obj0 = $cache && $cache->[0];

  # No cache entry?
  unless ( $$cachep ) {
    # Install results in cache.
    $self->_install_cache($cls, $keys, $cachep, $cache);
  }

  # Return results.
  wantarray ? @$cache : $cache;
}


sub _lookup
{
  my ($self, $cls, $keys) = @_;

  # Lookup in cache?
  my $cachep = $self->_lookup_cache($cls, $keys);
  my $cache = $$cachep;

  # Nothing in cache?
  unless ( $cache ) {
    # Lookup in storage.
    $cache = $self->_lookup_storage($cls, $keys);
  }

  # $DB::single = 1;

  # Return cache pointer and cache value.
  ($cachep, $cache);
}


sub _lookup_cache
{
  my ($self, $cls, $keys) = @_;

  no warnings; # Use of uninitialized value in join or string ...

  # $DB::single = 1;

  # Force $self to be class name.
  $cls = ref $cls || $cls;

  # Look up based on keys.
  my @key = sort keys %$keys;
  my $key = join("\0", @key);
  my $val = join("\0", map($keys->{$_}, @key));
  my $cachep = \$self->{'cache'}{$cls}{$key}{$val};

  $cachep;
}


sub _install_cache
{
  my ($self, $cls, $keys, $cachep, $objs) = @_;

  my $cc = $self->{'cache'}{$cls};

  # Add all objects to all keys entry.
  push(@$$cachep, @$objs);

  if ( keys %$keys > 1 ) {
    # Add to individual keys entry.
    for my $k ( keys %$keys ) {
      push(@{$cc->{$k}{$keys->{$k}} ||= [ ]}, @$objs);
    }
  }

  $self;
}


sub _lookup_storage
{
  my ($self, $cls, $keys, $count) = @_;

  my @obj;

  # Testing.
  # return wantarray ? @obj : \@obj;

  # local $self->{'debug'} = 1;

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  # $DB::single = 1 if $self->{'debug'};

  # Create class object placeholder.
  my $cls_obj = $self->class($cls);

  # Build expression to search for all $cls where each
  # key/val is equal.
  my $expr;

  my ($key, $val);
  while ( ($key, $val) = each %$keys ) {
    my $e = $cls_obj->{$key} eq $val;
    $expr = defined $expr ? ($expr & $e) : $e; 
  }
  # Execute query.
  @obj = $self->select($cls_obj, $expr);

  # $DB::single = 1;

  wantarray ? @obj : \@obj;
}


sub _insert_storage
{
  my ($self, @obj) = @_;

  # print STDERR "$self _insert_storage(@obj)\n";

  local $Tangram::TRACE = \*STDERR
    if $self->{'debug'};

  # $DB::single = 1;
  $self->storage->insert(@obj);

  1;
}


#############################################################
# Interface to UML-generated code.
#

package UML::__ObjectBase;

=head1 UML::__ObjectBase Methods

=cut

# UMMF::UML::Export::Perl::Tangram::Storage Instance.
our $storage;
our %storage_by_id;
our $storage_conn_id = '';


# Configuration.
our $storage_class ||= 'UMMF::UML::Export::Perl::Tangram::Storage';
our %storage_opts;
our $storage_opts_callback;


# Storage object accessors.

=head2 __storage_opts

  my $hash = $cls->__storage_opts;

Returns the hash of storage options used when a new Storage objects
is created by C<__storage>.

=cut
sub __storage_opts
{
  # Do the callback, if defined.
  my $opts = $storage_opts{$storage_conn_id} ||= { };
  if ( $storage_opts_callback ) {
    $storage_opts_callback->($opts, $storage_conn_id);
  }
  $opts;
}


=head2 __storage_set_opts_callback

  sub conn_opt_callback
  {
    my ($opts, $storage_conn_id) = @_;
    $opts->{'db'} = 'blahblah';
    ...;
  }
  $cls->__storage_set_opts_callback(\&func);

Sets the function to use when calling

=cut
sub __storage_set_opts_callback
{
  my ($self, $x) = @_;

  $storage_opts_callback = $x;
}


=head2 __storage_set_conn_id

  $cls->__storage_set_conn_id('some_connection_name');

Sets the current connection id to use for the remainder of the process.
Returns the previous connection id.

=cut
sub __storage_set_conn_id
{
  my ($self, $id) = @_;

  my $x = $storage_conn_id;

  $storage_conn_id = $id;
  $storage = undef; # Force look up by new $storage_conn_id in __storage() below
  $x;
}


=head2 __storage

  my $storage = $cls_or_obj->__storage();

Returns the current C<Perl::Tangram::Storage> object for C<$cls_or_obj> for the current connection id.
If a storage object has not been created for the current connection id, a new one is created using the initial options from C<__storage_opts()>.

=cut
sub __storage
{
  $storage ||= $storage_by_id{$storage_conn_id}
           ||= $storage_class->new(%{__storage_opts()}); 
}


=head2 __storage_disconnect

  my $storage = $cls_or_obj->__storage_disconnect();

Disconnects the $cls_or_obj from its current Storage object.
All object caches are flushed and the Storage object is dropped.

=cut
sub __storage_disconnect
{
  if ( $storage ) {
    $storage->disconnect;
  }

  # Clear out the storage config opts
  if ( $storage_opts_callback ) {
    # %storage_opts = ();
  }

  $storage = undef;
}


=head2 __storage_flush_cache

  $cls_or_obj->__storage_flush_cache();

Flushes object caches in the current Storage object, if any.
This is ideally done at the end of an interactive session.

=cut
sub __storage_flush_cache
{
  if ( $storage ) {
    $storage->flush_cache;
  }
}


=head2 __storage_update

  $obj->__storage_update();

Shorthand for:

  $obj->__storage->update($obj);

=cut
sub __storage_update
{
  my ($self) = @_;

  __storage->update($self);
}


=head2 __storage_update_or_insert

  $obj->__storage_update_or_insert();

Shorthand for:

  $obj->__storage->update_or_insert($obj);

=cut
sub __storage_update_or_insert
{
  my ($self) = @_;

  __storage->update_or_insert($self);
}


=head2 __storage_erase

  $obj->__storage_erase;

Shorthand for:

  $obj->__storage->erase($obj);

=cut
sub __storage_erase
{
  my ($self) = @_;

  __storage->erase($self);
}


=head2 __storage_insert

  $obj->__storage_insert();

Shorthand for:

  $obj->__storage->insert($obj);

=cut
sub __storage_insert
{
  my ($self) = @_;

  __storage->insert($self);
}


=head2 get_all

  my @objs = $cls->get_all(%key);

Shorthand for:

  $cls->__storage->get_all($cls, \%key);

=cut
sub get_all
{
  my ($self, %key) = @_;

  __storage->get_all($self, \%key);
}


=head2 get

  my $obj = $cls->get_al(%key);

Shorthand for:

  my $obj = $cls->__storage->get($cls, \%key);

=cut
sub get
{
  my ($self, %key) = @_;

  __storage->get($self, \%key);
}


=head2 get_or_error

  my $obj = $cls->get_or_error(%key);

Shorthand for:

  my $obj = $cls->__storage->get_or_error($cls, \%key);

=cut
sub get_or_error
{
  my ($self, %key) = @_;

  __storage->get_or_error($self, \%key);
}


=head2 get_or_new

  my $obj = $cls->get_or_new(%key);

Shorthand for:

  my $obj = $cls->__storage->get_or_new($cls, \%key);

=cut
sub get_or_new
{
  my ($self, %key) = @_;

  __storage->get_or_new($self, \%key);
}


=head2 get_or_init

  my $obj = $cls->get_or_new(\%key, \%init);

Shorthand for:

  my $obj = $cls->__storage->get_or_init($cls, \%key, \%init);

=cut
sub get_or_init
{
  my ($self, $keys, $inits) = @_;

  __storage->get_or_new($self, $keys, $inits);
}


=head2 get_force

  my $obj = $cls->get_force(%key);

Shorthand for:

  my $obj = $cls->__storage->get_force($cls, \%key);

=cut
sub get_force
{
  my ($self, %key) = @_;

  __storage->get_force($self, \%key);
}




# use Tangram::Expr;

# eval q{
# package Tangram::Expr;

# sub sum
# {
# 	my ($self, $val) = @_;

# $DB::single = 1;

# 	$self->{storage}
# 		->expr(Tangram::Integer->instance, "SUM($self->{expr})",
# 				$self->objects );
# }
# }; die($@) if $@;

#######################################################################

1;

#######################################################################


### Keep these comments at end of file: kstephens@users.sourceforge.net 2004/03/29 ###
### Local Variables: ###
### mode:perl ###
### perl-indent-level:2 ###
### perl-continued-statement-offset:0 ###
### perl-brace-offset:0 ###
### perl-label-offset:0 ###
### End: ###

