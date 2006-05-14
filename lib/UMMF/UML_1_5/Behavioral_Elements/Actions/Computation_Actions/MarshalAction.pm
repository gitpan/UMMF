# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: Perl.txt,v 1.77 2006/05/14 01:40:03 kstephens Exp $

package UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction;

#use 5.6.1;
use strict;
use warnings;

#################################################################
# Version
#

our $VERSION = do { my @r = (q{1.5} =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };


#################################################################
# Documentation
#

=head1 NAME

UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction -- 

=head1 VERSION

1.5

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<> : I<THIS> C<0..1> ----E<gt>  C<marshalType> : UMMF::UML_1_5::Foundation::Core::Class C<1>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>

=item multiplicity = C<1>

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
use UMMF::UML_1_5::__ObjectBase qw(:__ummf_array);


#################################################################
# Generalizations
#

use base qw(
  UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction



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

  UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction|UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction')  ;
}


=head2 C<__typecheck>

  UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaMarshalAction>


Returns true if receiver is a L<UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction|UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction>.
Other receivers will return false.

=cut
sub isaMarshalAction { 1 }


=head2 C<isaBehavioral_Elements__Actions__Computation_Actions__MarshalAction>


Returns true if receiver is a L<UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction|UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction>.
Other receivers will return false.
This is the fully qualified version of the C<isaMarshalAction> method.

=cut
sub isaBehavioral_Elements__Actions__Computation_Actions__MarshalAction { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::Actions::Computation_Actions::MarshalAction'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::Actions::Computation_Actions::MarshalAction' }



=head2 C<__isAbstract>

  $package->__isAbstract;

Returns C<0>.

=cut
sub __isAbstract { 0; }


my $__tangram_schema;
=head2 C<__tangram_schema>

  my $tangram_schema $obj_or_package->__tangram_schema

Returns a HASH ref that describes this Classifier for Tangram.

See L<UMMF::Export::Perl::Tangram|UMMF::Export::Perl::Tangram>

=cut
sub __tangram_schema
{
  my ($self) = @_;

  $__tangram_schema ||=
  {
   'classes' =>
   [
     'UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction' =>
     {
       'table' => 'Behavioral_Elements__Actions__Computation_Actions__MarshalAction',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'marshalType'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::Foundation::Core::Class',

                                             'col' => 'marshalType', 

                                                                                                                   }
      ,
                         },
       'bases' => [  'UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction',  ],
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
  #   0..1
  #  <--> 
  #  marshalType 1 UMMF::UML_1_5::Foundation::Core::Class.
    if ( defined $self->{'marshalType'} ) {
    my $x = $self->{'marshalType'};
    $self->{'marshalType'} = undef;
    $self->set_marshalType($x);
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
    $self->__use('UMMF::UML_1_5::Foundation::Core::Element');
    $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement');
    $self->__use('UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action');
    $self->__use('UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction');
  }

  $self->UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::Element::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action::___initialize;
  $self->UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction::___initialize;

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
  $self->UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction::___create(@args);
  $self->UMMF::UML_1_5::Foundation::Core::Element::___create();
  $self->UMMF::UML_1_5::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action::___create();
  $self->UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction::___create();

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
# AssociationEnd  <---> marshalType
# type = UMMF::UML_1_5::Foundation::Core::Class
# multiplicity = 1
# ordering = 

=head2 C<marshalType>

  my $val = $obj->marshalType;

Returns the AssociationEnd C<marshalType> value of type L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>.

=cut
sub marshalType ($)
{
  my ($self) = @_;
		  
  $self->{'marshalType'};
}


=head2 C<set_marshalType>

  $obj->set_marshalType($val);

Sets the AssociationEnd C<marshalType> value.
C<$val> must of type L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>.
Returns C<$obj>.

=cut
sub set_marshalType ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'marshalType'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML_1_5::Foundation::Core::Class')->__typecheck($val, "UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction.marshalType") }

    # Recursion lock
        $self->{'marshalType'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_marshalType>

  $obj->add_marshalType($val);

Adds the AssociationEnd C<marshalType> value.
C<$val> must of type L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_marshalType ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'marshalType'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML_1_5::Foundation::Core::Class')->__typecheck($val, "UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction.marshalType");
      
    # confess("UMMF::UML_1_5::Behavioral_Elements::Actions::Computation_Actions::MarshalAction::marshalType: too many")
    # if defined $self->{'marshalType'};

    # Recursion lock
        $self->{'marshalType'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_marshalType>

  $obj->remove_marshalType($val);

Removes the AssociationEnd C<marshalType> value C<$val>.
Returns C<$obj>.

=cut
sub remove_marshalType ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'marshalType'}) eq $val ) { # Recursion lock
    $val = $self->{'marshalType'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_marshalType>

  $obj->clear_marshalType;

Clears the AssociationEnd C<marshalType> links to L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>.
Returns C<$obj>.

=cut
sub clear_marshalType ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'marshalType'}) ) { # Recursion lock
    my $val = $self->{'marshalType'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_marshalType>

  $obj->count_marshalType;

Returns the number of elements of type L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class> associated with C<marshalType>.

=cut
sub count_marshalType ($)
{
  my ($self) = @_;

  my $x = $self->{'marshalType'};

  defined $x ? 1 : 0;
}







# End of Class MarshalAction


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
