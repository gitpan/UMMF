package UMMF::Object;

use 5.6.1;
use strict;
#use warnings;


our $AUTHOR = q{ kstephens@users.sourceforge.net 2003/05/25 };
our $VERSION = do { my @r = (q$Revision: 1.5 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

=head1 NAME

UMMF::Object - A base class for all UMMF classes.

=head1 SYNOPSIS

  use base qw(UMMF::Object);

=head1 DESCRIPTION

=head1 USAGE

=head1 EXPORT

None exported.

=head1 AUTHOR

Kurt Stephens, kstephens@users.sourceforge.net 2003/05/25

=head1 SEE ALSO

L<UMMF|UMMF>

=head1 VERSION

$Revision: 1.5 $

=head1 METHODS

=cut


#######################################################################
# Base class for all meta-metamodel classes.
#
# Note: no AUTOLOAD facilities.
#

package UMMF::Object::Base;

our $VERSION = do { my @r = (q$Revision: 1.5 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };


sub new
{
  my ($self, %opts) = @_;
  $self = bless(\%opts, ref($self) || $self);
  $self->initialize();
}


sub initialize
{
  my ($self) = @_;

  $self;
}


#######################################################################
# Base class for all meta model objects.
# Note: Clients of this class rely on AUTOLOAD functionality.
#


package UMMF::Object;

our $VERSION = do { my @r = (q$Revision: 1.5 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

use base qw(UMMF::Object::Base);

use Carp qw(confess);


sub initialize
{
  my ($self) = @_;

  $self->SUPER::initialize;

  # Use accessors to initialize.
  for my $key ( keys %$self ) {
    my $val = $self->{$key};
    my $meth;

    # $DB::single = 1 if $key eq 'connection';

    if ( ref($val) eq 'ARRAY' && $self->can($meth = "add_$key") ) {
      $self->{$key} = undef;
      $self->$meth(@$val);
    }
    elsif ( $self->can($meth = "set_$key") ) {
      $self->{$key} = undef;
      # $DB::single = 1 if $val =~ /::Smc/;
      $self->$meth($val);
    }
  }

  $self;
}


our $AUTOLOAD_verbose = 0;

use vars qw($AUTOLOAD);

sub AUTOLOAD
{
  no strict 'refs';
  
  my ($self, @args) = @_;
  local ($1, $2);
  
  my ($package, $operation) = $AUTOLOAD =~ m/^(?:(.+)::)([^:]+)$/;
  return if $operation eq 'DESTROY';
  
  #$DB::single = 1;
  
  # warn __PACKAGE__ . ": package='$package' operation='$operation'";
  
  # $DB::single = 1 if $operation eq 'importedElement';

  my ($method); # The autogenerated method.  

  if ( ref($self) ) {
  if ( $operation =~ /^set_(\w+)$/ # and exists($self->{$1})
       ) {
    my $slot = $1;
    $method = sub {
      no warnings; # Use of uninitialized value in string ne
      if ( $_[0]->{$slot} ne $_[1] ) {
	$_[0]->{$slot} = $_[1];
      }
      $_[0];
    };
  }
  elsif ( $operation =~ /^add_(\w+)$/ # and exists($self->{$1})
       ) {
    my $slot = $1;
    $method = sub {
      my $self = shift;

      push(@{$self->{$slot} ||= []}, @_);

      $self;
    };
  }
  elsif ( @_ == 1 ) {
    warn "$_[0] -> {$operation} does not exist" 
    if ( $AUTOLOAD_verbose && ! exists($self->{$operation}) );
    
    $method = sub {
      if ( wantarray ) {
	if ( ref($_[0]->{$operation}) eq 'ARRAY' ) {
	  @{$_[0]->{$operation}}
	} else {
	  ( $_[0]->{$operation} )
	}
      } else {
	$_[0]->{$operation};
      }
    };
  }
  }

  
  # Save the generated method and invoke it.
  if ( $method ) {
    *{$AUTOLOAD} = $method;
    # Tail call now.
    goto &$method;
  } else {
    confess('Exception::Object::UndefinedMethod: ' . 
	join(' ',
	    'package'   => $package,
	    'operation' => $operation,
	    'reciever'  => $self,
	    'arguments' => [ @args ],
	     )
	);
  }
}


sub __clone
{
  my ($self) = @_;

  $self = bless({ %$self }, ref($self));

  for my $key ( keys %$self ) {
    my $v = $self->{$key};
    if ( ref($v) eq 'ARRAY' ) {
      $self->{$key} = [ @$v ];
    } elsif ( ref($v) eq 'HASH' ) {
      $self->{$key} = { %$v };
    }
  }

  $self;
}




#######################################################################

1;

#######################################################################


### Keep these comments at end of file: kstephens@users.sourceforge.net 2003/04/06 ###
### Local Variables: ###
### mode:perl ###
### perl-indent-level:2 ###
### perl-continued-statement-offset:0 ###
### perl-brace-offset:0 ###
### perl-label-offset:0 ###
### End: ###

