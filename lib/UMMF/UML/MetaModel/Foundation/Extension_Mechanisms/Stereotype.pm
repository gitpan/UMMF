# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype;

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

UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement|UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement>




=head1 ATTRIBUTES


=head2 C<icon> : UMMF::UML::MetaModel::Foundation::Data_Types::Geometry 


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::Geometry|UMMF::UML::MetaModel::Foundation::Data_Types::Geometry>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = I<UNSPECIFIED>

=item container_type = C<Set::Object>

=back


=head2 C<baseClass> : UMMF::UML::MetaModel::Foundation::Data_Types::Name [C<0..*>]


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::Name|UMMF::UML::MetaModel::Foundation::Data_Types::Name>

=item visibility = C<private>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = I<UNSPECIFIED>

=item container_type = C<Set::Object>

=back



=head1 ASSOCIATIONS


=head2 C<0..1> : C<owner> E<lt>---E<gt>  C<definedTag> : UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition|UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<stereotype> E<lt>---E<gt>  C<extendedElement> : UMMF::UML::MetaModel::Foundation::Core::ModelElement C<0..*>



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


=head2 C<0..1> : C<constrainedStereotype> E<lt>---E<gt>  C<stereotypeConstraint> : UMMF::UML::MetaModel::Foundation::Core::Constraint C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Constraint|UMMF::UML::MetaModel::Foundation::Core::Constraint>

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
  UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement



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

  UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype|UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaStereotype>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype|UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype>.
Other receivers will return false.

=cut
sub isaStereotype { 1 }


=head2 C<isaFoundation__Extension_Mechanisms__Stereotype>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype|UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype>.
Other receivers will return false.
This is the fully qualified version of the C<isaStereotype> method.

=cut
sub isaFoundation__Extension_Mechanisms__Stereotype { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Foundation::Extension_Mechanisms::Stereotype'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Foundation::Extension_Mechanisms::Stereotype' }



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
     'UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype' =>
     {
       'table' => 'Foundation__Extension_Mechanisms__Stereotype',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 	       'icon'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Data_Types::Geometry',

                                             'col' => 'icon', 

                                                                                                                   }
      ,
         	       'baseClass'
       => {
	 'type_impl' => 'flat_array',
                           'table' => 'Foundation__Extension_Mechanisms__Stereotype__baseClass', 

                  'type' => 'string', 

                                             'item' => 'baseClass', 

                  'coll' => 'range',

                  'slot' => 'baseClass_i', 

                                                                      }
      ,
         
	 # Associations
	 	 	       'definedTag'
       => {
	 'type_impl' => 'iset',
         'class' => 'UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition',

                           'table' => 'Foundation__Extension_Mechanisms__Stereotype__definedTag', 

                                                               'coll' => 'owner',

                                                                               }
      ,
                  	 	       'extendedElement'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::ModelElement',

                           'table' => 'Foundation__Stereotype_ExtendedElement', 

                                                      'item' => 'extendedElement', 

                  'coll' => 'stereotype',

                                                                               }
      ,
                  	 	       'stereotypeConstraint'
       => {
	 'type_impl' => 'iset',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Constraint',

                           'table' => 'Foundation__Extension_Mechanisms__Stereotype__stereotypeConstraint', 

                                                               'coll' => 'constrainedStereotype',

                                                                               }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement',  ],
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

    # Attribute icon
  if ( exists $self->{'icon'} ) {
    my $x = $self->{'icon'};
    $self->{'icon'} = undef;
    $self->set_icon($x);
  } else {
      }
  
    # Attribute baseClass
  if ( exists $self->{'baseClass'} ) {
    my $x = $self->{'baseClass'};
    $self->{'baseClass'} = undef;
    $self->set_baseClass($x);
  } else {
      }
  


  # Associations

  # AssociationEnd 
  #  owner 0..1
  #  <--> 
  #  definedTag 0..* UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition.
    if ( defined $self->{'definedTag'} ) {
    my $x = $self->{'definedTag'};
        $self->{'definedTag'} = Set::Object->new();
        $self->set_definedTag(@$x);
  }
  
  # AssociationEnd 
  #  stereotype 0..*
  #  <--> 
  #  extendedElement 0..* UMMF::UML::MetaModel::Foundation::Core::ModelElement.
    if ( defined $self->{'extendedElement'} ) {
    my $x = $self->{'extendedElement'};
        $self->{'extendedElement'} = Set::Object->new();
        $self->set_extendedElement(@$x);
  }
  
  # AssociationEnd 
  #  constrainedStereotype 0..1
  #  <--> 
  #  stereotypeConstraint 0..* UMMF::UML::MetaModel::Foundation::Core::Constraint.
    if ( defined $self->{'stereotypeConstraint'} ) {
    my $x = $self->{'stereotypeConstraint'};
        $self->{'stereotypeConstraint'} = Set::Object->new();
        $self->set_stereotypeConstraint(@$x);
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
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Element');
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement');
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement');
  }

  $self->UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement::___initialize;

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
  $self->UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement::___create();

  $self;
}




#################################################################
# Attributes
#



=for html <hr/>

=cut

#################################################################
# Attribute icon
# type = UMMF::UML::MetaModel::Foundation::Data_Types::Geometry
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = 

=head2 C<icon>

  my $val = $obj->icon;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::Geometry|UMMF::UML::MetaModel::Foundation::Data_Types::Geometry> value of Attribute C<icon>.

=cut
sub icon ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'icon'};

  ;

  $val;
}


=head2 C<set_icon>

  $obj->set_icon($val);

Sets the value of Attribute C<icon>.
C<$val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::Geometry|UMMF::UML::MetaModel::Foundation::Data_Types::Geometry> or C<undef>.
Returns C<$obj>.

=cut
sub set_icon ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    $self->__use('UMMF::UML::MetaModel::Foundation::Data_Types::Geometry')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype.icon");
  }

    $self->{'icon'} = $val
  ;

  ;

  $self;
}


=head2 C<count_icon>

  $obj->count_icon;

Returns the number of elements (0 or 1) in C<icon>.

=cut
sub count_icon ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'icon'};

  ;

  defined $val ? 1 : 0;
}



=for html <hr/>

=cut

#################################################################
# Attribute baseClass
# type = UMMF::UML::MetaModel::Foundation::Data_Types::Name
# multiplicity = 0..*
# ordering = unordered
# ownerScope = instance
# initialValue = 

=head2 C<baseClass>

  my $array_ref = $obj->baseClass;
  my @val = $obj->baseClass;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::Name|UMMF::UML::MetaModel::Foundation::Data_Types::Name> values of Attribute C<baseClass>.
In list context it returns the list of values.
In scalar context it returns a reference to the list of values.

=cut
sub baseClass ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'baseClass'} ||= [ ];

  ;

  wantarray ? @$val : $val;
}




=head2 C<set_baseClass>

  $obj->set_baseClass(@val);

Sets the values of Attribute C<baseClass>.
The elements of C<@val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::Name|UMMF::UML::MetaModel::Foundation::Data_Types::Name>.
Returns C<$obj>.

=cut
sub set_baseClass ($@)
{
  my ($self, @val) = @_;

  ;

  for my $val ( @val ) { 
    ;
  }
  
  $self->{'baseClass'} = \@val;
  
  ;

  $self;
}


=head2 C<add_baseClass>

  $obj->add_baseClass(@val);

Adds the values of Attribute C<baseClass>.
The elements of C<@val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::Name|UMMF::UML::MetaModel::Foundation::Data_Types::Name>.
Returns C<$obj>.

=cut
sub add_baseClass ($@)
{
  my ($self, @val) = @_;

  ;

  for my $val ( @val ) { 
    ;
  }

  my $x = $self->{'baseClass'} ||= [ ]; 
  push(@$x, @val);
  
  ;

  $self;
}


=head2 C<remove_baseClass>

  $obj->remove_baseClass(@val);

Removes values from Attribute C<baseClass>.
The elements of C<@val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::Name|UMMF::UML::MetaModel::Foundation::Data_Types::Name>.
Returns C<$obj>.

=cut
sub remove_baseClass ($@)
{
  my ($self, @val) = @_;

  ;

  for my $val ( @val ) { 
    ;
  }

  my $x = $self->{'baseClass'} ||= [ ];
  __ummf_array_delete_each($x, \@val);

  ;

  $self;
}


=head2 C<clear_baseClass>

  $obj->clear_baseClass;

Removes all values from Attribute C<baseClass>.
Returns C<$obj>.

=cut
sub clear_baseClass ($)
{
  my ($self) = @_;

  ;

  $self->{'baseClass'} = [ ];

  ;
	      
  $self;
}


=head2 C<count_baseClass>

  $obj->count_baseClass;

Returns the number of elements in C<baseClass>.

=cut
sub count_baseClass ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'baseClass'};

  ;

  $val ? scalar @$val : 0;
}




#################################################################
# Association
#


=for html <hr/>

=cut

#################################################################
# AssociationEnd owner <---> definedTag
# type = UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition
# multiplicity = 0..*
# ordering = 

=head2 C<definedTag>

  my @val = $obj->definedTag;
  my $ary_val = $obj->definedTag;

Returns the AssociationEnd C<definedTag> values of type L<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition|UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub definedTag ($)
{
  my ($self) = @_;

    my $x = $self->{'definedTag'};

  # confess("Container for definedTag $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_definedTag>

  $obj->set_definedTag(@val);

Sets the AssociationEnd C<definedTag> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition|UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition>.
Returns C<$obj>.

=cut
sub set_definedTag ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_definedTag;
  $self->add_definedTag(@val);
}


=head2 C<add_definedTag>

  $obj->add_definedTag(@val);

Adds AssociationEnd C<definedTag> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition|UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition>.
Returns C<$obj>.

=cut
sub add_definedTag ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'definedTag'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype.definedTag");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_owner($self) if $old;
    $val->add_owner($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_definedTag>

  $obj->remove_definedTag(@val);

Removes the AssociationEnd C<definedTag> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition|UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition>.
Returns C<$obj>.

=cut
sub remove_definedTag ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'definedTag'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype.definedTag");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_owner($self) if $old;
    $val->add_owner($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_definedTag>

  $obj->clear_definedTag;

Clears the AssociationEnd C<definedTag> links to L<UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition|UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::TagDefinition>.
Returns C<$obj>.

=cut
sub clear_definedTag ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'definedTag'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'definedTag'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_owner($self) if $old;
    $val->add_owner($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_definedTag>

  $obj->count_definedTag;

Returns the number of elements associated with C<definedTag>.

=cut
sub count_definedTag ($)
{
  my ($self) = @_;

  my $x = $self->{'definedTag'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd stereotype <---> extendedElement
# type = UMMF::UML::MetaModel::Foundation::Core::ModelElement
# multiplicity = 0..*
# ordering = 

=head2 C<extendedElement>

  my @val = $obj->extendedElement;
  my $ary_val = $obj->extendedElement;

Returns the AssociationEnd C<extendedElement> values of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub extendedElement ($)
{
  my ($self) = @_;

    my $x = $self->{'extendedElement'};

  # confess("Container for extendedElement $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_extendedElement>

  $obj->set_extendedElement(@val);

Sets the AssociationEnd C<extendedElement> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_extendedElement ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_extendedElement;
  $self->add_extendedElement(@val);
}


=head2 C<add_extendedElement>

  $obj->add_extendedElement(@val);

Adds AssociationEnd C<extendedElement> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub add_extendedElement ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'extendedElement'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype.extendedElement");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_stereotype($self) if $old;
    $val->add_stereotype($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_extendedElement>

  $obj->remove_extendedElement(@val);

Removes the AssociationEnd C<extendedElement> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub remove_extendedElement ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'extendedElement'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype.extendedElement");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_stereotype($self) if $old;
    $val->add_stereotype($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_extendedElement>

  $obj->clear_extendedElement;

Clears the AssociationEnd C<extendedElement> links to L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_extendedElement ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'extendedElement'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'extendedElement'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_stereotype($self) if $old;
    $val->add_stereotype($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_extendedElement>

  $obj->count_extendedElement;

Returns the number of elements associated with C<extendedElement>.

=cut
sub count_extendedElement ($)
{
  my ($self) = @_;

  my $x = $self->{'extendedElement'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd constrainedStereotype <---> stereotypeConstraint
# type = UMMF::UML::MetaModel::Foundation::Core::Constraint
# multiplicity = 0..*
# ordering = 

=head2 C<stereotypeConstraint>

  my @val = $obj->stereotypeConstraint;
  my $ary_val = $obj->stereotypeConstraint;

Returns the AssociationEnd C<stereotypeConstraint> values of type L<UMMF::UML::MetaModel::Foundation::Core::Constraint|UMMF::UML::MetaModel::Foundation::Core::Constraint>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub stereotypeConstraint ($)
{
  my ($self) = @_;

    my $x = $self->{'stereotypeConstraint'};

  # confess("Container for stereotypeConstraint $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_stereotypeConstraint>

  $obj->set_stereotypeConstraint(@val);

Sets the AssociationEnd C<stereotypeConstraint> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Constraint|UMMF::UML::MetaModel::Foundation::Core::Constraint>.
Returns C<$obj>.

=cut
sub set_stereotypeConstraint ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_stereotypeConstraint;
  $self->add_stereotypeConstraint(@val);
}


=head2 C<add_stereotypeConstraint>

  $obj->add_stereotypeConstraint(@val);

Adds AssociationEnd C<stereotypeConstraint> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Constraint|UMMF::UML::MetaModel::Foundation::Core::Constraint>.
Returns C<$obj>.

=cut
sub add_stereotypeConstraint ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'stereotypeConstraint'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::Constraint')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype.stereotypeConstraint");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_constrainedStereotype($self) if $old;
    $val->add_constrainedStereotype($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_stereotypeConstraint>

  $obj->remove_stereotypeConstraint(@val);

Removes the AssociationEnd C<stereotypeConstraint> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Constraint|UMMF::UML::MetaModel::Foundation::Core::Constraint>.
Returns C<$obj>.

=cut
sub remove_stereotypeConstraint ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'stereotypeConstraint'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Constraint')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Extension_Mechanisms::Stereotype.stereotypeConstraint");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_constrainedStereotype($self) if $old;
    $val->add_constrainedStereotype($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_stereotypeConstraint>

  $obj->clear_stereotypeConstraint;

Clears the AssociationEnd C<stereotypeConstraint> links to L<UMMF::UML::MetaModel::Foundation::Core::Constraint|UMMF::UML::MetaModel::Foundation::Core::Constraint>.
Returns C<$obj>.

=cut
sub clear_stereotypeConstraint ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'stereotypeConstraint'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'stereotypeConstraint'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_constrainedStereotype($self) if $old;
    $val->add_constrainedStereotype($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_stereotypeConstraint>

  $obj->count_stereotypeConstraint;

Returns the number of elements associated with C<stereotypeConstraint>.

=cut
sub count_stereotypeConstraint ($)
{
  my ($self) = @_;

  my $x = $self->{'stereotypeConstraint'};

    defined $x ? $x->size : 0;
  }







# End of Class Stereotype


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

