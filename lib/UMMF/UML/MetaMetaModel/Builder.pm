package UMMF::UML::MetaMetaModel::Builder;

use 5.6.1;
use strict;
#use warnings;

our $AUTHOR = q{ kstephens@users.sourceforge.net 2003/04/14 };
our $VERSION = do { my @r = (q$Revision: 1.21 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

=head1 NAME

UMMF::UML::MetaMetaModel::Builder - Constructs a Model from an input stream.

=head1 SYNOPSIS

  use UMMF::UML::MetaMetaModel::Factory;
  use UMMF::UML::MetaMetaModel::Builder;
  my $factory = UMMF::UML::MetaMetaModel::Factory->new(...);
  my $builder = UMMF::UML::MetaMetaModel::Builder->new('factory' => $factory);

  my $parser = SomeModelParser->new(...);
  $parser->parse($builder);

=head1 DESCRIPTION

Typically a model parser constructs one of these for handling parsing events.

This class manages creation of Models by managing scoping contexts for Model and Namespace during parsing of a meta-model or model description.

Once all the objects are created, the links between the ModelElements are finalized.

L<UMMF::UML::Import::MetaMetaModel|UMMF::UML::Import::MetaMetaModel> uses this class during parsing of the UML meta-model specificiation file.

=head1 USAGE

=head1 EXPORT

None exported.

=head1 AUTHOR

Kurt Stephens, kstephens@users.sourceforge.net 2003/04/14

=head1 SEE ALSO

L<UMMF::UML::MetaModel|UMMF::UML::MetaModel>.

=head1 VERSION

$Revision: 1.21 $

=head1 METHODS

=cut


#######################################################################

use base qw(UMMF::UML::MetaMetaModel::Object);

#######################################################################

use UMMF::UML::MetaMetaModel::Util qw(:all);

use Carp qw(confess);

#######################################################################

sub initialize
{
  my ($self) = @_;

  $self->SUPER::initialize;

  # Top-level model.
  $self->{'model_top_level'} ||= undef;

  # Current Model.
  $self->{'model'} ||= undef;
  $self->{'modelSaved'} ||= [ ];

  # Current Namespace.
  $self->{'namespace'} ||= undef;
  $self->{'namespaceSaved'} ||= [ ];

  # Current Generalization parents.
  $self->{'generalization_parent'} ||= [ ];
  $self->{'generalization_parentSaved'} ||= [ ];

  # Collection of top-level meta objects.
  # Which are later vivified after all Classifiers have been created.
  $self->{'.attribute'} ||= [ ];
  $self->{'.association'} ||= [ ];
  $self->{'.usage'} ||= [ ];
  $self->{'.generalization'} ||= [ ];

  $self->{'debugInput'}  ||= $ENV{UMMF_BUILDER_DEBUG};
  $self->{'debugCreate'} ||= 0;

  $self;
}


#######################################################################
# Model Managment:
#
# A model has Classifiers.
# We cannot create all the Features (and Associations) until all the Classifiers 
# have been created, because some Features may reference
# Classifiers that have not been created yet.
#
# Once we have created all the Classifiers, we
# can back-patch the type name references
# and construct the Features and Associations.
#
# This code also assumes that setting (or adding) one end of an 
# AssociationEnd link will cause the opposite
# AssociationEnd links to be updated appropriately.
#
# The UMMF::UML::MetaMetaModel classes implement this protocol. 
# The generated UMMF::UML::MetaModel will implement this protocol by 
# definition.
#

=head2 begin_Model

  $self->begin_Model(%opts);

Begins a new Model in the current Namespace.

Model is a Namespace, so a new Namespace context is started.

If a Model has not been created yet $self->model_top_level is set to the new Model.

=cut
sub begin_Model
{
  my ($self, %opts) = @_;

  #$DB::single = 1;
  my $model = $self->create('Model', 
			    'visibility' => 'public',
			    'isSpecification' => 'false',
			    'isRoot' => 'false',
			    'isLeaf' => 'false',
			    'isActive' => 'false',
			    'isAbstract' => 'false',
			    
			    'namespace' => $self->{'namespace'},
			    %opts,
			    );
  
  # Remember last Model.
  push(@{$self->{'modelSave'}}, $self->{'model'});
  $self->{'model'} = $model;

  # Remember the top-level Model.
  $self->{'model_top_level'} ||= $model;

  print STDERR "Model \"", $model->name, "\" {\n" if $self->{'debugInput'};

  # A Model is a Namespace.
  $self->begin_Namespace($model);

  $model;
}


=head2 model

  my $model = $self->model;

Returns the current Model.

=cut
sub model
{
  my ($self) = @_;
  
  # $DB::single = 1;
  
  $self->{'model'};
}


=head2 model_top_level

  my $model = $self->model_top_level;

Returns the top-level Model, i.e. the first Model created by $self->begin_Model().

=cut
sub model_top_level
{
  my ($self) = @_;
  
  # $DB::single = 1;
  
  $self->{'model_top_level'};
}



=head2 end_Model

  my $model = $self->end_Model();

Terminates the current Model context, and resumes the previous Model and Namespace context.

Calls $self->finish_Model($model);

=cut
sub end_Model
{
  my ($self) = @_;

  my $model = $self->{'model'};

  die("Not enough end_Namespace") if $self->namespace ne $model;

  # A Model is a Namespace.
  $self->end_Namespace();

  print STDERR "} // Model \"$model->{name}\"\n" if $self->{'debugInput'};

  # Finish the model.
  $model = $self->finish_Model($model);

  # Restore previous Model scope.
  $self->{'model'} = pop(@{$self->{'modelSave'}});
  
  # Return the finished model.
  $model;
}


#######################################################################

# Namespace mgmt.

=head2 begin_Namespace

  my $ns = $self->begin_Namespace($ns);

Begins a new Namespace context.

=cut
sub begin_Namespace
{
  my ($self, $ns) = @_;

  # $DB::single = 1;

  print STDERR "Namespace ", $ns->{'name'}, " {\n" if $self->{'debugInput'};

  if ( $self->{'namespace'} ) {
    my $x = Namespace_ownedElement_name($self->{'namespace'}, $ns->{'name'});
    if ( $x && $x ne $ns ) {
      confess("Namespace '" . $self->{'namespace'}->{'name'} . "' already has '$x' named '" . $ns->{'name'} . "'");
    }
  }

  push(@{$self->{'namespaceSaved'}}, $self->{'namespace'});
  $self->{'namespace'} = $ns;

  $ns;
}


=head2 end_Namespace

  my $ns = $self->end_Namespace();

Returns current namespace after restoring previous Namespace context.

=cut
sub end_Namespace
{
  my ($self) = @_;
  
  my $ns = $self->{'namespace'};

  $self->{'namespace'} = pop(@{$self->{'namespaceSaved'}});

  print STDERR "} // Namespace $ns->{name}\n" if $self->{'debugInput'};

  $ns;
}



#######################################################################

=head2 begin_Package

  my $pkg = $self->begin_Package($name);

Creates a new Package and begins a new Namespace context using the new Package.

=cut
sub begin_Package
{
  my ($self, $name) = @_;

  print STDERR "Package $name {\n" if $self->{'debugInput'};

  my $ns # = $self->ownedElement_name_safe($self->{'namespace'}, $name)
  ;

  if ( ! $ns ) {
    $ns = $self->create('Package',
			# Defaults.
			'visibility' => 'public',
			'isSpecification' => 'false',
			'isRoot' => 'false',
			'isLeaf' => 'false',
			'isActive' => 'false',
			'isAbstract' => 'false',

			'name' => $name,
			'namespace' => $self->{'namespace'},
			);
  }

  # Package is a Namespace.
  $self->begin_Namespace($ns);

  $ns;
}


=head2 end_Package

  my $pkg = $self->end_Package();

Terminates the current Package context, and resumes the previous Namespace context.

=cut
sub end_Package
{
  my ($self) = @_;

  my $ns = $self->{'namespace'};

  # Package is a Namespace.
  $self->end_Namespace;

  print STDERR "} // Package $ns->{name}\n" if $self->{'debugInput'};

  $ns;
}


#######################################################################
#

=head2 add_Usage

  $self->add_Usage(@ns);

Added Usage Dependencies for the current Namespace.

Each @ns is a fully-qualified ModelElement name.

=cut
sub add_Usage
{
  my ($self, @ns) = @_;

  # $DB::single = 1 if $self->{'namespace'} =~ /Package/;

  push(@{$self->{'.usage'}}, [ $self->{'namespace'}, \@ns ]);

  $self;
}


#######################################################################
# Manage a block of default Generalizations.

=head2 begin_Generalization_parent

   $self->Generalization_parent(\@model_element_name);

Begins a new Generalization parent context.

Classifiers created within this new Generalization parent context will specialize each of the @model_element by name, by default; i.e. no generalization parents are specified in the messages to $self->begin_Classifier().

This allows a short-hand notation for causing all Classifiers in a group to speciailize a set of other Classifiers.

=cut
sub begin_Generalization_parent
{
  my ($self, $x) = @_;

  my $name = join(', ', @$x);
  print STDERR "Generalization $name { \n" if ( $self->{'debugInput'} );

  push(@{$self->{'generalization_parentSave'} ||= [ ]}, $self->{'generalization_parent'});
  $self->{'generalization_parent'} = [ @$x ];

  $self;
}


=head2 end_Generalization_parent

Restores the previous Generalization parent context.

=cut
sub end_Generalization_parent
{
  my ($self) = @_;
  
  $self->{'generalization_parent'} = pop(@{$self->{'generalization_parentSaved'}});

  print STDERR "} // Generalization\n" if ( $self->{'debugInput'} );

  $self;
}


#######################################################################

=head2 begin_Classifier

  my $cls = $self->begin_Classifier($name, $meta, $gens);

Creates a new Classifier and begins a new Namespace context using the new Classifier.

If $name contains '/', $cls->isAbstract will be true.  (nmemonic: '/' implies leaning text: italics).

C<$meta> defaults to C<'Class'>;

C<$gens> defaults to the curren Generalization_parent context.

=cut
sub begin_Classifier
{
  my ($self, $name, $meta, $gens) = @_;

  # Generalize the classifier.

  my %opts;
  $opts{'isAbstract'} = 'true' if ( $name =~ s@/@@sg );
  $opts{'isAbstract'} ||= 'false';

  $gens ||= $self->{'generalization_parent'};

  $meta ||= 'Class';
  print STDERR "Classifier ($meta) $name { \n" if ( $self->{'debugInput'} );

  # Create a new Classifier object.
  my $cls = $self->create($meta,
			  # Defaults.
			  'visibility' => 'public',
			  'isSpecification' => 'false',
			  'isRoot' => 'false',
			  'isLeaf' => 'false',
			  'isAbstract' => 'false',
			  'isActive' => 'false',

			  'name' => $name,
			  'namespace' => $self->{'namespace'},
			  %opts,
			 );

  # Remember generalizations for later because
  # We could be importing from another package.
  if ( $gens && @$gens ) {
    push(@{$self->{'.generalization'}}, [ $cls, [ @$gens ] ]);
  }

  # A Classifier is a Namespace.
  $self->begin_Namespace($cls);
 
  $cls;
}


=head2 end_Classifier

  my $cls->end_Classifier(@opts);

Terminates the current Classifier context, and resumes the previous Namespace context.

If $opts[1] is true, this quickly creates an empty Classifier before hand.

=cut

sub end_Classifier
{
  my ($self, @opts) = @_;

  # A quicky!!
  if ( $opts[0] ) {
      $self->begin_Classifier(@opts);
  }

  # A Classifier is a Namespace.
  my $cls = $self->end_Namespace;

  print STDERR "} // Classifier $cls->{name}\n" if ( $self->{'debugInput'} );

  $cls;
}


#######################################################################
# Add a attribute.
# Type resolution is elided untill _add_Attribute.
#

=head2 add_Attribute

  my $x = add_Attribute(\%x);

Adds a new Attribute to the current Classifier.

C<%x> should have the same structure as an Attribute object would have.

=cut
sub add_Attribute
{
  my ($self, $x) = @_;

  confess("Attribute name") unless $x->{'name'};
  confess("Attribute type") unless $x->{'type'};

  $x->{'owner'} ||= $self->namespace;

  $x->{'multiplicity'} ||= '1';

  if ( $self->{'debugInput'} ) {
    print STDERR Attribute_asString($x), "\n";
  }

  push(@{$self->{'.attribute'}}, $x);
  
  $x;
}


#######################################################################
# Literals are primitive so they can be added now.
#

=head2 add_EnumerationLiteral

  $self->add_EnumerationLiteral($name);

Adds a new EnumerationLiteral to the current Classifier, which must be an Enumeration.

=cut
sub add_EnumerationLiteral
{
  my ($self, $name) = @_;

  print STDERR "  $name; // EnumerationLiteral\n" if ( $self->{'debugInput'} );

  my $e = $self->namespace;
  $DB::single == 1 && confess("Not a Enumeration") unless $e->isaEnumeration;

  my $l = $self->create('EnumerationLiteral',
			# Defaults.
			'visibility' => 'public',
			'isSpecification' => 'false',
			'isRoot' => 'false',
			'isLeaf' => 'false',
			'isAbstract' => 'false',

			'name' => $name,

			'enumeration' => $e,
			'namespace' => $e,
			);

  $self;
}


#######################################################################
# Add an Association.
#

=head2 add_Association

  my $x = add_Association(\%x);

Adds a new Association between two or more participant Classifiers.

C<%x> should have the same structure as an Association object.

If an AssociationEnd's participant is '.' the current Namespace is used.

Each AssociationEnd's targetScope defaults to 'instance'.

Participant resolution is elided until C<finish_Association>.

=cut
sub add_Association
{
  my ($self, $x) = @_;

  confess("Not enough AssociationEnds") 
  unless @{$x->{'connection'}} > 1;

  # '/name' refers to Generlization parent implementation of Association
  return '' if grep($_->{'name'} =~ /^\//, @{$x->{'connection'}});

  # If associationClass is '.' then this Association
  # is the AssociationClass's connection data.
  if ( $x->{'associationClass'} eq '.' ) {
    $x->{'associationClass'} = $self->namespace;
    $DB::single = 1 unless $x->{'associationClass'}->isaAssociationClass;
    confess("Not an AssociationClass") unless $x->{'associationClass'}->isaAssociationClass;
  }
  
  my $connection = $x->{'connection'};
  for my $end ( @$connection ) {
    # If participant is '.' use the enclosing Namespace
    # (i.e.) Classifier!!.
    $end->{'participant'} = $self->namespace
    if ( $end->{'participant'} eq '.' );

    $end->{'namespace'} ||= $self->namespace;

    $end->{'targetScope'} ||= 'instance';

    $end->{'changeability'} ||= 'changeable';

    $end->{'isSpecification'} ||= 'false';

    #confess("Same AssociationEnd specified more than once") 
    #if grep($_ eq $end, @{$x->{'connection'}}) > 1;
  }

  # If all ends->isNavigable is not specified,
  #   make them all navigable.
  if ( scalar @$connection == scalar grep(! defined $_->{'isNavigable'}, @$connection ) ) {
    # print STDERR "All ends have unspecified isNavigable; making them isNavigable = 'true'.\n";
    for my $end ( @$connection ) {
      $end->{'isNavigable'} = 'true';
    }
  # Otherwise,
  #   for each $end,
  #      set isNavigable = 'false' if not specified.
  } else {
    for my $end ( @$connection ) {
      unless ( defined $end->{'isNavigable'} ) { 
	# print STDERR "End '$end->{name}' has unspecified isNavigable; isNavigable = 'false'.\n";
	$end->{'isNavigable'} = 'false';
      }
    }
  }

  # Default to navigable.
  for my $end ( @$connection ) {
    $end->{'isNavigable'} = 'true'
    unless defined $end->{'isNavigable'};
  }
 
  # confess('Too many AssociationEnds') if @{$x->{'connection'}} > 2;

  if ( $self->{'debugInput'} ) {
    print STDERR Association_asString($x), "\n";
  }

  push(@{$self->{'.association'}}, $x);

  $x;
}


#######################################################################
#
# Factory interface
#

=head2 create

  my $obj = $self->create($name, @args);

Requests a new object of the $name type from the factory.

Subclasses can intercept all object creation here.

=cut 
sub create
{
  my ($self, $name, @args) = @_;

  local $self->{'factory'}{'debugCreate'} = $self->{'debugCreate'};

  $self->{'factory'}->create($name, @args);
}


=head2 flush

  $self->flush($name);

Notifies the factory that all objects of the $name type have been created and can be vivified.

C<UMMF::UML::MetaMetaModel::FactoryBoot> uses this notification to do magic finalizations of the constructed UML Model.  This is only used for the initial bootstrapping of UMMF.

=cut
sub flush
{
  my ($self, @args) = @_;

  $self->{'factory'}->flush(@args);

  $self;
}


#######################################################################
#
# Finish model.
# 

=head2 finish_Model

  my $self->finish_Model($model);

Completes constrution of the Model by completing the Usages, Generalizations, Attributes and Associations created so far.

The 

=cut
sub finish_Model
{
  my ($self, $model) = @_;

  # Flush Classifiers.
  $self->flush('Classifier');

  # Add Usages to Namespaces.
  # Do this first so name => Classifier lookups will work.
  eval {
    for my $x ( @{$self->{'.usage'}} ) {
      $self->finish_Usage($x);
    }
    @{$self->{'.usage'}} = ();
  };
  if ( $@ ) {
    die("While adding Usages: \n$@");
  }
  $self->flush('Usage');


  # Add Generalizations to Classifiers.
  eval {
    for my $x ( @{$self->{'.generalization'}} ) {
      $self->finish_Generalization($x);
    }
    @{$self->{'.generalization'}} = ();
  };
  if ( $@ ) {
    die("While adding Generalizations: \n$@");
  }
  $self->flush('Generalization');

  
  # Add Attributes to Classifiers.
  eval {
    for my $x ( @{$self->{'.attribute'}} ) {
      eval {
	$self->finish_Attribute($x);
      };
      if ( $@ ) {
	die("In Attribute: \n  " . Attribute_asString($x) . ": \n$@");
      }
    }
    @{$self->{'.attribute'}} = ();
  };
  if ( $@ ) {
    die("While adding Attributes: \n$@");
  }
  $self->flush('Attribute');
  

  # Add Associations to Classifiers.
  eval {      
    for my $assoc ( @{$self->{'.association'}} ) {
      eval {
	# $DB::single = 1;
	$self->finish_Association($assoc);
      };
      if ( $@ ) {
	die("In Association: \n  " . Association_asString($assoc) . ": \n$@");
      }
    }
    @{$self->{'.association'}} = ();
  };
  if ( $@ ) {
    die("While adding Associations: \n$@");
  }
  $self->flush('Association');


  $self->flush('Model');


  $model;
}


sub finish_Usage
{
  my ($self, $x) = @_;

  my @ns = @{$x->[1]};

  # $DB::single = 1;

  eval {
    my @all;
    for my $ns ( @ns ) {
      my @name = split('::', $ns);
      my $all;

      # print STDERR "$x->[0]{name} <=== $ns\n";
      # $DB::single = 1;

      # Was it a wildcarded Usage?
      if ( $name[-1] eq '*' ) {
	# Get the Package,
	# using everything up until '::*'.
	pop @name;
	my $name = join('::', @name);
	$ns = $self->ownedElement_name_($name);

	# Import everything from that package.
	$all = 1;
      } else {
	# Get the item.
	$ns = $self->ownedElement_name_($ns);

	# If the item is a Package,
	# Import everything from that package.
	if ( $ns->isaPackage ) {
	  $all = 1;
	}
      }

      if ( $all ) {
	push(@all, $ns->ownedElement);
      } else {
	# Import only the item.
	push(@all, $ns);      
      }
    }
    
    confess("importedElement is not ref") if grep(! ref($_), @all);
    
    $x->[0]->add_importedElement(@all);
  };
  if ( $@ ) {
    die("To " . ModelElement_name_qualified($x->[0]) . ":\n$@");
  }

  $self;
}


sub finish_Generalization
{
  my ($self, $x) = @_;

  my $cls = $x->[0];
  my @gen = @{$x->[1]};
  
  eval {
    # $DB::single = 1;
    # Look up Generalization parent in the namespace (i.e. Package)
    # of the Class.
    #$DB::single = 1 if grep($_ eq 'Expression', @gen);
    @gen = map($self->lookupType($_, $cls->{'namespace'}), @gen);
    
    @gen = map($self->create('Generalization',
			     # Defaults.
			     'visibility' => 'public',
			     'isSpecification' => 'false',

			     'namespace' => ModelElement_namespace_common($_, $cls),
			     'parent' => $_,
			     'child' => $cls,
			     ),
	       @gen);    
  };
  if ( $@ ) {
    $cls = $cls->{'name'};
    die("in Classifier $cls: \n$@");
  }


  $self;  
}


sub finish_Attribute
{
  my ($self, $x) = @_;

  my $attr;

  eval {
    confess("Attribute name") unless $x->{'name'};
    confess("Attribute type") unless $x->{'type'};
    
    # $DB::single = 1;
    
    Multiplicity_fromString(\$x->{'multiplicity'}, $self);
    
    # Lookup Attribute types in the Class namespace (i.e. Package).
    $self->lookupType(\$x->{'type'}, $x->{'owner'}->{'namespace'});
    
    # Handle initialValue.
    if ( defined $x->{'initialValue'} ) {
      # local $self->{'debugCreate'} = 1;
      $x->{'initialValue'} = $self->create('Expression',
					   'language' => undef, # Universal Language
					   'body'     => $x->{'initialValue'},
					  );
    }

    $attr = $self->create('Attribute', 
			  # Defaults.
			  'visibility' => 'public',
			  'isSpecification' => 'false',
			  'ownerScope' => 'instance',
			  'targetScope' => 'instance', # ???
			  'ordering' => 'unordered',
			  'changeability' => 'changeable',

			  'namespace' => $x->{'owner'},
			  %$x,
			 );
  };
  if ( $@ ) {
    my $n = $x->{'owner'}{'name'};
    die("  to Classifier $n:\n$@");
  }

  $attr;
}


sub finish_Association
{
  my ($self, $x) = @_;

  # $DB::single = 1;

  # Resolve AssociationEnd participants
  my $connection = $x->{'connection'};

  for my $end ( @$connection ) {
    # If the namespace of the AssociationEnd is a Classifier 
    # (which it most likely is)
    # defer participant lookup to the Classifier's namespace
    # (usu. a Package)
    #
    my $ns = $end->{'namespace'};
    while ( $ns->isaClassifier ) {
      $ns = $ns->{'namespace'};
    }
   
    eval {
      $self->lookupType(\$end->{'participant'}, $ns);
    };
    if ( $@ ) {
      print "ns = $ns\n";
      die($@);
    }
  }

  # Resolve Association namespace:
  # Common Namespace of AssociationEnd participants.
  $x->{'namespace'} ||= ModelElement_namespace_common(map($_->{'participant'}, @$connection));

  # Was this an AssociationClass?
  my $assoc = $x->{'associationClass'};
  delete $x->{'associationClass'};

  # Fill in the rest of each AssociationEnd.
  for my $end ( @$connection ) {
    #use Data::Dumper;
    #print STDERR Data::Dumper->new([$end])->Maxdepth(2)->Dump, "\n";

    # Turn parsed multiplicity string into a Multiplicity object.
    Multiplicity_fromString(\$end->{'multiplicity'}, $self);
    confess("multiplicity is not ref") unless ref($end->{'multiplicity'});

    #$DB::single = 1;
    # Create actual AssociationEnd object.
    $end = $self->create('AssociationEnd',
			 '_association' => $assoc,
			 %$end,
			 );

    # If the Association is a AssociationClass,
    # the Ends were added to the AssocationClass,
    # beacuse '_assocation' was specified.
  }

  # Otherwise, create a new Association object.
  if ( ! $assoc ) {
    # $DB::single = 1 if grep($_->{'name'} eq 'range', @{$x->{'connection'}});
    $assoc = $self->create('Association',
			   # Defaults.
			   'visibility' => 'public',
			   'isSpecification' => 'false',
			   'isRoot' => 'false',
			   'isLeaf' => 'false',
			   'isAbstract' => 'false',
		
			   %$x,
			  );
  }

  # $DB::single = 1 if grep(! $_->{'connection_'}, $assoc->connection);

  $assoc;
}


#######################################################################
# Support 
#
# Glued to UMMF::UML::MetaMetaModel::Util functions.
# 

sub name_qualified
{
  my ($self, $obj) = @_;

  ModelElement_name_qualified($obj);
}


sub namespace_root
{
  my ($self, $ns) = @_;

  ModelElement_namespace_root($ns);
}


sub ownedElement_name_safe
{
  my ($self, $name, $ns) = @_;

  Namespace_ownedElement_name($ns, $name);
}


sub ownedElement_name
{
  my ($self, $name, $ns) = @_;

  $ns ||= $self->model;

  Namespace_ownedElement_name($ns, $name);
}


sub ownedElement_name_
{
  my ($self, $name, $ns) = @_;

  $ns ||= $self->model;

  Namespace_ownedElement_name_($ns, $name);
}


#
# This is a lexical convention, not a UML convention.
#
# If looking up a name in from the context of a Classifier
# fallback on the Classifier's namespace.
# 
# This may not be typical of most languages but we are
# parsing a specification, and we dont need a bunch of Usages
# when most Classifiers in a Package colaborate with each other.
#
sub lookupType
{
  my ($self, $name, $ns) = @_;

  $ns ||= $self->model;

  Namespace_lookup($ns, $name);
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

