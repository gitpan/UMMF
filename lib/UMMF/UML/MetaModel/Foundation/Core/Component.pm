# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Foundation::Core::Component;

#use 5.6.1;
use strict;
use warnings;

#################################################################
# Version
#

our $VERSION = do { my @r = (q{1.0} =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };


#################################################################
# Documentation
#

=head1 NAME

UMMF::UML::MetaModel::Foundation::Core::Component -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<0..*> : C<deployedComponent> E<lt>---E<gt>  C<deploymentLocation> : UMMF::UML::MetaModel::Foundation::Core::Node C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Node|UMMF::UML::MetaModel::Foundation::Core::Node>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<implementationLocation> E<lt>---E<gt>  C<implementation> : UMMF::UML::MetaModel::Foundation::Core::Artifact C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Artifact|UMMF::UML::MetaModel::Foundation::Core::Artifact>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<container> E<lt>---E<gt>  C<resident> : UMMF::UML::MetaModel::Foundation::Core::ModelElement C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back



=head1 METHODS

=cut



#################################################################
# Dependencies
#





use Carp qw(croak confess);
use Set::Object 1.05;
use Class::Multimethods 1.70;
use Data::Dumper;
use Scalar::Util qw(weaken);
use UMMF::UML::MetaModel::__ObjectBase qw(:__ummf_array);


#################################################################
# Generalizations
#

use base qw(
  UMMF::UML::MetaModel::Foundation::Core::Classifier



);


#################################################################
# Exports
#

our @EXPORT_OK = qw(
);
our %EXPORT_TAGS = ( 'all' => \@EXPORT_OK );





#################################################################
# Validation
#


=head2 C<__validate_type>

  UMMF::UML::MetaModel::Foundation::Core::Component->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Foundation::Core::Component|UMMF::UML::MetaModel::Foundation::Core::Component>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Foundation::Core::Component')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Foundation::Core::Component->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Foundation::Core::Component->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Foundation::Core::Component' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaComponent>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Core::Component|UMMF::UML::MetaModel::Foundation::Core::Component>.
Other receivers will return false.

=cut
sub isaComponent { 1 }


=head2 C<isaFoundation__Core__Component>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Core::Component|UMMF::UML::MetaModel::Foundation::Core::Component>.
Other receivers will return false.
This is the fully qualified version of the C<isaComponent> method.

=cut
sub isaFoundation__Core__Component { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Foundation::Core::Component'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Foundation::Core::Component' }



=head2 C<__isAbstract>

  $package->__isAbstract;

Returns C<0>.

=cut
sub __isAbstract { 0; }


my $__tangram_schema;
=head2 C<__tangram_schema>

  my $tangram_schema $obj_or_package->__tangram_schema

Returns a HASH ref that describes this Classifier for Tangram.

See L<UMMF::UML::Export::Perl::Tangram|UMMF::UML::Export::Perl::Tangram>

=cut
sub __tangram_schema
{
  my ($self) = @_;

  $__tangram_schema ||=
  {
   'classes' =>
   [
     'UMMF::UML::MetaModel::Foundation::Core::Component' =>
     {
       'table' => 'Foundation__Core__Component',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'deploymentLocation'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Node',

                           'table' => 'Foundation__Core__DeploymentLocation_DeployedComponent', 

                                                      'item' => 'deploymentLocation', 

                  'coll' => 'deployedComponent',

                                                                               }
      ,
                  	 	       'implementation'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Artifact',

                           'table' => 'Foundation__Core__ImplementationLocation_Implementation', 

                                                      'item' => 'implementation', 

                  'coll' => 'implementationLocation',

                                                                               }
      ,
                  	 	       'resident'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::ModelElement',

                           'table' => 'Foundation__Core__Container_Resident', 

                                                      'item' => 'resident', 

                  'coll' => 'container',

                                                                               }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::Foundation::Core::Classifier',  ],
       'sql' => {

       },
     },
   ],

   'sql' =>
   {
    # Note Tangram::Ref::get_exporter() has
    # "UPDATE $table SET $self->{col} = $refid WHERE id = $id",
    # The id_col is hard-coded, 
    # Thus id_col will not work.
    #'id_col' => '__sid',
    #'class_col' => '__stype',
   },
     # 'set_id' => sub { }
     # 'get_id' => sub { }

      
  };
}


#################################################################
# Class Attributes
#


    

#################################################################
# Class Associations
#


    

#################################################################
# Initialization
#


=head2 C<___initialize>

Initialize all Attributes and AssociationEnds in a instance of this Classifier.
Does B<not> initalize slots in its Generalizations.

See also: C<__initialize>.

=cut
sub ___initialize
{
  my ($self) = @_;

  # Attributes



  # Associations

  # AssociationEnd 
  #  deployedComponent 0..*
  #  <--> 
  #  deploymentLocation 0..* UMMF::UML::MetaModel::Foundation::Core::Node.
    if ( defined $self->{'deploymentLocation'} ) {
    my $x = $self->{'deploymentLocation'};
        $self->{'deploymentLocation'} = Set::Object->new();
        $self->set_deploymentLocation(@$x);
  }
  
  # AssociationEnd 
  #  implementationLocation 0..*
  #  <--> 
  #  implementation 0..* UMMF::UML::MetaModel::Foundation::Core::Artifact.
    if ( defined $self->{'implementation'} ) {
    my $x = $self->{'implementation'};
        $self->{'implementation'} = Set::Object->new();
        $self->set_implementation(@$x);
  }
  
  # AssociationEnd 
  #  container 0..*
  #  <--> 
  #  resident 0..* UMMF::UML::MetaModel::Foundation::Core::ModelElement.
    if ( defined $self->{'resident'} ) {
    my $x = $self->{'resident'};
        $self->{'resident'} = Set::Object->new();
        $self->set_resident(@$x);
  }
  

  $self;
}


my $__initialize_use;

=head2 C<__initialize>

Initialize all slots in this Classifier and all its Generalizations.

See also: C<___initialize>.

=cut
sub __initialize
{
  my ($self) = @_;

  # $DB::single = 1;

  unless ( ! $__initialize_use ) {
    $__initialize_use = 1;
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Namespace');
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Element');
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement');
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement');
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Classifier');
  }

  $self->UMMF::UML::MetaModel::Foundation::Core::Component::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Namespace::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Classifier::___initialize;

  $self;
}
      

=head2 C<__create>

Calls all <<create>> Methods for this Classifier and all Generalizations.

See also: C<___create>.

=cut
sub __create
{
  my ($self, @args) = @_;

  # $DB::single = 1;
  $self->UMMF::UML::MetaModel::Foundation::Core::Component::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Namespace::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::Classifier::___create();

  $self;
}




#################################################################
# Attributes
#




#################################################################
# Association
#


=for html <hr/>

=cut

#################################################################
# AssociationEnd deployedComponent <---> deploymentLocation
# type = UMMF::UML::MetaModel::Foundation::Core::Node
# multiplicity = 0..*
# ordering = 

=head2 C<deploymentLocation>

  my @val = $obj->deploymentLocation;
  my $ary_val = $obj->deploymentLocation;

Returns the AssociationEnd C<deploymentLocation> values of type L<UMMF::UML::MetaModel::Foundation::Core::Node|UMMF::UML::MetaModel::Foundation::Core::Node>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub deploymentLocation ($)
{
  my ($self) = @_;

    my $x = $self->{'deploymentLocation'};

  # confess("Container for deploymentLocation $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_deploymentLocation>

  $obj->set_deploymentLocation(@val);

Sets the AssociationEnd C<deploymentLocation> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Node|UMMF::UML::MetaModel::Foundation::Core::Node>.
Returns C<$obj>.

=cut
sub set_deploymentLocation ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_deploymentLocation;
  $self->add_deploymentLocation(@val);
}


=head2 C<add_deploymentLocation>

  $obj->add_deploymentLocation(@val);

Adds AssociationEnd C<deploymentLocation> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Node|UMMF::UML::MetaModel::Foundation::Core::Node>.
Returns C<$obj>.

=cut
sub add_deploymentLocation ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'deploymentLocation'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::Node')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::Component.deploymentLocation");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_deployedComponent($self) if $old;
    $val->add_deployedComponent($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_deploymentLocation>

  $obj->remove_deploymentLocation(@val);

Removes the AssociationEnd C<deploymentLocation> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Node|UMMF::UML::MetaModel::Foundation::Core::Node>.
Returns C<$obj>.

=cut
sub remove_deploymentLocation ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'deploymentLocation'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Node')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::Component.deploymentLocation");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_deployedComponent($self) if $old;
    $val->add_deployedComponent($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_deploymentLocation>

  $obj->clear_deploymentLocation;

Clears the AssociationEnd C<deploymentLocation> links to L<UMMF::UML::MetaModel::Foundation::Core::Node|UMMF::UML::MetaModel::Foundation::Core::Node>.
Returns C<$obj>.

=cut
sub clear_deploymentLocation ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'deploymentLocation'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'deploymentLocation'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_deployedComponent($self) if $old;
    $val->add_deployedComponent($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_deploymentLocation>

  $obj->count_deploymentLocation;

Returns the number of elements associated with C<deploymentLocation>.

=cut
sub count_deploymentLocation ($)
{
  my ($self) = @_;

  my $x = $self->{'deploymentLocation'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd implementationLocation <---> implementation
# type = UMMF::UML::MetaModel::Foundation::Core::Artifact
# multiplicity = 0..*
# ordering = 

=head2 C<implementation>

  my @val = $obj->implementation;
  my $ary_val = $obj->implementation;

Returns the AssociationEnd C<implementation> values of type L<UMMF::UML::MetaModel::Foundation::Core::Artifact|UMMF::UML::MetaModel::Foundation::Core::Artifact>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub implementation ($)
{
  my ($self) = @_;

    my $x = $self->{'implementation'};

  # confess("Container for implementation $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_implementation>

  $obj->set_implementation(@val);

Sets the AssociationEnd C<implementation> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Artifact|UMMF::UML::MetaModel::Foundation::Core::Artifact>.
Returns C<$obj>.

=cut
sub set_implementation ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_implementation;
  $self->add_implementation(@val);
}


=head2 C<add_implementation>

  $obj->add_implementation(@val);

Adds AssociationEnd C<implementation> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Artifact|UMMF::UML::MetaModel::Foundation::Core::Artifact>.
Returns C<$obj>.

=cut
sub add_implementation ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'implementation'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::Artifact')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::Component.implementation");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_implementationLocation($self) if $old;
    $val->add_implementationLocation($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_implementation>

  $obj->remove_implementation(@val);

Removes the AssociationEnd C<implementation> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Artifact|UMMF::UML::MetaModel::Foundation::Core::Artifact>.
Returns C<$obj>.

=cut
sub remove_implementation ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'implementation'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Artifact')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::Component.implementation");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_implementationLocation($self) if $old;
    $val->add_implementationLocation($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_implementation>

  $obj->clear_implementation;

Clears the AssociationEnd C<implementation> links to L<UMMF::UML::MetaModel::Foundation::Core::Artifact|UMMF::UML::MetaModel::Foundation::Core::Artifact>.
Returns C<$obj>.

=cut
sub clear_implementation ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'implementation'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'implementation'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_implementationLocation($self) if $old;
    $val->add_implementationLocation($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_implementation>

  $obj->count_implementation;

Returns the number of elements associated with C<implementation>.

=cut
sub count_implementation ($)
{
  my ($self) = @_;

  my $x = $self->{'implementation'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd container <---> resident
# type = UMMF::UML::MetaModel::Foundation::Core::ModelElement
# multiplicity = 0..*
# ordering = 

=head2 C<resident>

  my @val = $obj->resident;
  my $ary_val = $obj->resident;

Returns the AssociationEnd C<resident> values of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub resident ($)
{
  my ($self) = @_;

    my $x = $self->{'resident'};

  # confess("Container for resident $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_resident>

  $obj->set_resident(@val);

Sets the AssociationEnd C<resident> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_resident ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_resident;
  $self->add_resident(@val);
}


=head2 C<add_resident>

  $obj->add_resident(@val);

Adds AssociationEnd C<resident> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub add_resident ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'resident'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::Component.resident");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_container($self) if $old;
    $val->add_container($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_resident>

  $obj->remove_resident(@val);

Removes the AssociationEnd C<resident> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub remove_resident ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'resident'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::Component.resident");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_container($self) if $old;
    $val->add_container($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_resident>

  $obj->clear_resident;

Clears the AssociationEnd C<resident> links to L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_resident ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'resident'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'resident'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_container($self) if $old;
    $val->add_container($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_resident>

  $obj->count_resident;

Returns the number of elements associated with C<resident>.

=cut
sub count_resident ($)
{
  my ($self) = @_;

  my $x = $self->{'resident'};

    defined $x ? $x->size : 0;
  }







# End of Class Component


=pod

=for html <hr/>

I<END OF DOCUMENT>

=cut

############################################################################

1; # is true!

############################################################################

### Keep these comments at end of file: kstephens@users.sourceforge.net 2003/04/06 ###
### Local Variables: ###
### mode:perl ###
### perl-indent-level:2 ###
### perl-continued-statement-offset:0 ###
### perl-brace-offset:0 ###
### perl-label-offset:0 ###
### End: ###

