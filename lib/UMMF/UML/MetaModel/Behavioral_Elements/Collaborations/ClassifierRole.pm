# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole;

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

UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole -- 

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


=head2 C<multiplicity> : UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity 


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity|UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = I<UNSPECIFIED>

=item container_type = C<Set::Object>

=back



=head1 ASSOCIATIONS


=head2 C<0..*> : C<classifierRole> E<lt>---E<gt>  C<availableFeature> : UMMF::UML::MetaModel::Foundation::Core::Feature C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Feature|UMMF::UML::MetaModel::Foundation::Core::Feature>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<classifierRole> E<lt>---E<gt>  C<base> : UMMF::UML::MetaModel::Foundation::Core::Classifier C<1..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>

=item multiplicity = C<1..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<playedRole> E<lt>---E<gt>  C<conformingInstance> : UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<receiver> E<lt>---E<gt>  C<message_receiver> : UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<sender> E<lt>---E<gt>  C<message_sender> : UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<private>

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

  UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaClassifierRole>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole>.
Other receivers will return false.

=cut
sub isaClassifierRole { 1 }


=head2 C<isaBehavioral_Elements__Collaborations__ClassifierRole>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole>.
Other receivers will return false.
This is the fully qualified version of the C<isaClassifierRole> method.

=cut
sub isaBehavioral_Elements__Collaborations__ClassifierRole { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::Collaborations::ClassifierRole'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::Collaborations::ClassifierRole' }



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
     'UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole' =>
     {
       'table' => 'Behavioral_Elements__Collaborations__ClassifierRole',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 	       'multiplicity'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity',

                                             'col' => 'multiplicity', 

                                                                                                                   }
      ,
         
	 # Associations
	 	 	       'availableFeature'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Feature',

                           'table' => 'ClassifierRole_AvailableFeature', 

                                                      'item' => 'availableFeature', 

                  'coll' => 'classifierRole',

                                                                               }
      ,
                  	 	       'base'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Classifier',

                           'table' => 'ClassifierRole_Base', 

                                                      'item' => 'base', 

                  'coll' => 'classifierRole',

                                                                               }
      ,
                  	 	       'conformingInstance'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance',

                           'table' => 'Behavioral_Elements__PlayedRole_ConformingInstance', 

                                                      'item' => 'conformingInstance', 

                  'coll' => 'playedRole',

                                                                               }
      ,
                  	 	       'message_receiver'
       => {
	 'type_impl' => 'iset',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message',

                           'table' => 'Behavioral_Elements__Collaborations__ClassifierRole__message_receiver', 

                                                               'coll' => 'receiver',

                                                                               }
      ,
                  	 	       'message_sender'
       => {
	 'type_impl' => 'iset',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message',

                           'table' => 'Behavioral_Elements__Collaborations__ClassifierRole__message_sender', 

                                                               'coll' => 'sender',

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

    # Attribute multiplicity
  if ( exists $self->{'multiplicity'} ) {
    my $x = $self->{'multiplicity'};
    $self->{'multiplicity'} = undef;
    $self->set_multiplicity($x);
  } else {
      }
  


  # Associations

  # AssociationEnd 
  #  classifierRole 0..*
  #  <--> 
  #  availableFeature 0..* UMMF::UML::MetaModel::Foundation::Core::Feature.
    if ( defined $self->{'availableFeature'} ) {
    my $x = $self->{'availableFeature'};
        $self->{'availableFeature'} = Set::Object->new();
        $self->set_availableFeature(@$x);
  }
  
  # AssociationEnd 
  #  classifierRole 0..*
  #  <--> 
  #  base 1..* UMMF::UML::MetaModel::Foundation::Core::Classifier.
    if ( defined $self->{'base'} ) {
    my $x = $self->{'base'};
        $self->{'base'} = Set::Object->new();
        $self->set_base(@$x);
  }
  
  # AssociationEnd 
  #  playedRole 0..*
  #  <--> 
  #  conformingInstance 0..* UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance.
    if ( defined $self->{'conformingInstance'} ) {
    my $x = $self->{'conformingInstance'};
        $self->{'conformingInstance'} = Set::Object->new();
        $self->set_conformingInstance(@$x);
  }
  
  # AssociationEnd 
  #  receiver 1
  #  <--> 
  #  message_receiver 0..* UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message.
    if ( defined $self->{'message_receiver'} ) {
    my $x = $self->{'message_receiver'};
        $self->{'message_receiver'} = Set::Object->new();
        $self->set_message_receiver(@$x);
  }
  
  # AssociationEnd 
  #  sender 1
  #  <--> 
  #  message_sender 0..* UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message.
    if ( defined $self->{'message_sender'} ) {
    my $x = $self->{'message_sender'};
        $self->{'message_sender'} = Set::Object->new();
        $self->set_message_sender(@$x);
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

  $self->UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole::___initialize;
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
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole::___create(@args);
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



=for html <hr/>

=cut

#################################################################
# Attribute multiplicity
# type = UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = 

=head2 C<multiplicity>

  my $val = $obj->multiplicity;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity|UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity> value of Attribute C<multiplicity>.

=cut
sub multiplicity ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'multiplicity'};

  ;

  $val;
}


=head2 C<set_multiplicity>

  $obj->set_multiplicity($val);

Sets the value of Attribute C<multiplicity>.
C<$val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity|UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity> or C<undef>.
Returns C<$obj>.

=cut
sub set_multiplicity ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    $self->__use('UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.multiplicity");
  }

    $self->{'multiplicity'} = $val
  ;

  ;

  $self;
}


=head2 C<count_multiplicity>

  $obj->count_multiplicity;

Returns the number of elements (0 or 1) in C<multiplicity>.

=cut
sub count_multiplicity ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'multiplicity'};

  ;

  defined $val ? 1 : 0;
}




#################################################################
# Association
#


=for html <hr/>

=cut

#################################################################
# AssociationEnd classifierRole <---> availableFeature
# type = UMMF::UML::MetaModel::Foundation::Core::Feature
# multiplicity = 0..*
# ordering = 

=head2 C<availableFeature>

  my @val = $obj->availableFeature;
  my $ary_val = $obj->availableFeature;

Returns the AssociationEnd C<availableFeature> values of type L<UMMF::UML::MetaModel::Foundation::Core::Feature|UMMF::UML::MetaModel::Foundation::Core::Feature>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub availableFeature ($)
{
  my ($self) = @_;

    my $x = $self->{'availableFeature'};

  # confess("Container for availableFeature $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_availableFeature>

  $obj->set_availableFeature(@val);

Sets the AssociationEnd C<availableFeature> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Feature|UMMF::UML::MetaModel::Foundation::Core::Feature>.
Returns C<$obj>.

=cut
sub set_availableFeature ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_availableFeature;
  $self->add_availableFeature(@val);
}


=head2 C<add_availableFeature>

  $obj->add_availableFeature(@val);

Adds AssociationEnd C<availableFeature> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Feature|UMMF::UML::MetaModel::Foundation::Core::Feature>.
Returns C<$obj>.

=cut
sub add_availableFeature ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'availableFeature'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::Feature')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.availableFeature");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_classifierRole($self) if $old;
    $val->add_classifierRole($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_availableFeature>

  $obj->remove_availableFeature(@val);

Removes the AssociationEnd C<availableFeature> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Feature|UMMF::UML::MetaModel::Foundation::Core::Feature>.
Returns C<$obj>.

=cut
sub remove_availableFeature ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'availableFeature'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Feature')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.availableFeature");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_classifierRole($self) if $old;
    $val->add_classifierRole($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_availableFeature>

  $obj->clear_availableFeature;

Clears the AssociationEnd C<availableFeature> links to L<UMMF::UML::MetaModel::Foundation::Core::Feature|UMMF::UML::MetaModel::Foundation::Core::Feature>.
Returns C<$obj>.

=cut
sub clear_availableFeature ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'availableFeature'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'availableFeature'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_classifierRole($self) if $old;
    $val->add_classifierRole($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_availableFeature>

  $obj->count_availableFeature;

Returns the number of elements associated with C<availableFeature>.

=cut
sub count_availableFeature ($)
{
  my ($self) = @_;

  my $x = $self->{'availableFeature'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd classifierRole <---> base
# type = UMMF::UML::MetaModel::Foundation::Core::Classifier
# multiplicity = 1..*
# ordering = 

=head2 C<base>

  my @val = $obj->base;
  my $ary_val = $obj->base;

Returns the AssociationEnd C<base> values of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub base ($)
{
  my ($self) = @_;

    my $x = $self->{'base'};

  # confess("Container for base $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_base>

  $obj->set_base(@val);

Sets the AssociationEnd C<base> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Returns C<$obj>.

=cut
sub set_base ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_base;
  $self->add_base(@val);
}


=head2 C<add_base>

  $obj->add_base(@val);

Adds AssociationEnd C<base> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Returns C<$obj>.

=cut
sub add_base ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'base'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::Classifier')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.base");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_classifierRole($self) if $old;
    $val->add_classifierRole($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_base>

  $obj->remove_base(@val);

Removes the AssociationEnd C<base> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Returns C<$obj>.

=cut
sub remove_base ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'base'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Classifier')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.base");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_classifierRole($self) if $old;
    $val->add_classifierRole($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_base>

  $obj->clear_base;

Clears the AssociationEnd C<base> links to L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Returns C<$obj>.

=cut
sub clear_base ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'base'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'base'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_classifierRole($self) if $old;
    $val->add_classifierRole($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_base>

  $obj->count_base;

Returns the number of elements associated with C<base>.

=cut
sub count_base ($)
{
  my ($self) = @_;

  my $x = $self->{'base'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd playedRole <---> conformingInstance
# type = UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance
# multiplicity = 0..*
# ordering = 

=head2 C<conformingInstance>

  my @val = $obj->conformingInstance;
  my $ary_val = $obj->conformingInstance;

Returns the AssociationEnd C<conformingInstance> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub conformingInstance ($)
{
  my ($self) = @_;

    my $x = $self->{'conformingInstance'};

  # confess("Container for conformingInstance $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_conformingInstance>

  $obj->set_conformingInstance(@val);

Sets the AssociationEnd C<conformingInstance> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>.
Returns C<$obj>.

=cut
sub set_conformingInstance ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_conformingInstance;
  $self->add_conformingInstance(@val);
}


=head2 C<add_conformingInstance>

  $obj->add_conformingInstance(@val);

Adds AssociationEnd C<conformingInstance> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>.
Returns C<$obj>.

=cut
sub add_conformingInstance ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'conformingInstance'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.conformingInstance");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_playedRole($self) if $old;
    $val->add_playedRole($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_conformingInstance>

  $obj->remove_conformingInstance(@val);

Removes the AssociationEnd C<conformingInstance> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>.
Returns C<$obj>.

=cut
sub remove_conformingInstance ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'conformingInstance'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.conformingInstance");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_playedRole($self) if $old;
    $val->add_playedRole($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_conformingInstance>

  $obj->clear_conformingInstance;

Clears the AssociationEnd C<conformingInstance> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>.
Returns C<$obj>.

=cut
sub clear_conformingInstance ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'conformingInstance'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'conformingInstance'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_playedRole($self) if $old;
    $val->add_playedRole($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_conformingInstance>

  $obj->count_conformingInstance;

Returns the number of elements associated with C<conformingInstance>.

=cut
sub count_conformingInstance ($)
{
  my ($self) = @_;

  my $x = $self->{'conformingInstance'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd receiver <---> message_receiver
# type = UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message
# multiplicity = 0..*
# ordering = 

=head2 C<message_receiver>

  my @val = $obj->message_receiver;
  my $ary_val = $obj->message_receiver;

Returns the AssociationEnd C<message_receiver> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub message_receiver ($)
{
  my ($self) = @_;

    my $x = $self->{'message_receiver'};

  # confess("Container for message_receiver $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_message_receiver>

  $obj->set_message_receiver(@val);

Sets the AssociationEnd C<message_receiver> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
Returns C<$obj>.

=cut
sub set_message_receiver ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_message_receiver;
  $self->add_message_receiver(@val);
}


=head2 C<add_message_receiver>

  $obj->add_message_receiver(@val);

Adds AssociationEnd C<message_receiver> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
Returns C<$obj>.

=cut
sub add_message_receiver ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'message_receiver'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.message_receiver");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_receiver($self) if $old;
    $val->add_receiver($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_message_receiver>

  $obj->remove_message_receiver(@val);

Removes the AssociationEnd C<message_receiver> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
Returns C<$obj>.

=cut
sub remove_message_receiver ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'message_receiver'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.message_receiver");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_receiver($self) if $old;
    $val->add_receiver($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_message_receiver>

  $obj->clear_message_receiver;

Clears the AssociationEnd C<message_receiver> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
Returns C<$obj>.

=cut
sub clear_message_receiver ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'message_receiver'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'message_receiver'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_receiver($self) if $old;
    $val->add_receiver($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_message_receiver>

  $obj->count_message_receiver;

Returns the number of elements associated with C<message_receiver>.

=cut
sub count_message_receiver ($)
{
  my ($self) = @_;

  my $x = $self->{'message_receiver'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd sender <---> message_sender
# type = UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message
# multiplicity = 0..*
# ordering = 

=head2 C<message_sender>

  my @val = $obj->message_sender;
  my $ary_val = $obj->message_sender;

Returns the AssociationEnd C<message_sender> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub message_sender ($)
{
  my ($self) = @_;

    my $x = $self->{'message_sender'};

  # confess("Container for message_sender $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_message_sender>

  $obj->set_message_sender(@val);

Sets the AssociationEnd C<message_sender> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
Returns C<$obj>.

=cut
sub set_message_sender ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_message_sender;
  $self->add_message_sender(@val);
}


=head2 C<add_message_sender>

  $obj->add_message_sender(@val);

Adds AssociationEnd C<message_sender> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
Returns C<$obj>.

=cut
sub add_message_sender ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'message_sender'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.message_sender");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_sender($self) if $old;
    $val->add_sender($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_message_sender>

  $obj->remove_message_sender(@val);

Removes the AssociationEnd C<message_sender> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
Returns C<$obj>.

=cut
sub remove_message_sender ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'message_sender'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::ClassifierRole.message_sender");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_sender($self) if $old;
    $val->add_sender($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_message_sender>

  $obj->clear_message_sender;

Clears the AssociationEnd C<message_sender> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::Message>.
Returns C<$obj>.

=cut
sub clear_message_sender ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'message_sender'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'message_sender'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_sender($self) if $old;
    $val->add_sender($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_message_sender>

  $obj->count_message_sender;

Returns the number of elements associated with C<message_sender>.

=cut
sub count_message_sender ($)
{
  my ($self) = @_;

  my $x = $self->{'message_sender'};

    defined $x ? $x->size : 0;
  }







# End of Class ClassifierRole


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
