# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::OCL::Expressions::SendAction;

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

UMMF::UML::MetaModel::OCL::Expressions::SendAction -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::SendSignalAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::SendSignalAction>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<1> : C<sendSignal> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp|UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

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
  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::SendSignalAction



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

  UMMF::UML::MetaModel::OCL::Expressions::SendAction->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::OCL::Expressions::SendAction|UMMF::UML::MetaModel::OCL::Expressions::SendAction>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::OCL::Expressions::SendAction')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::OCL::Expressions::SendAction->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::OCL::Expressions::SendAction->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::OCL::Expressions::SendAction' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaSendAction>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::SendAction|UMMF::UML::MetaModel::OCL::Expressions::SendAction>.
Other receivers will return false.

=cut
sub isaSendAction { 1 }


=head2 C<isaOCL__Expressions__SendAction>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::SendAction|UMMF::UML::MetaModel::OCL::Expressions::SendAction>.
Other receivers will return false.
This is the fully qualified version of the C<isaSendAction> method.

=cut
sub isaOCL__Expressions__SendAction { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'OCL::Expressions::SendAction'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'OCL::Expressions::SendAction' }



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
     'UMMF::UML::MetaModel::OCL::Expressions::SendAction' =>
     {
       'table' => 'OCL__Expressions__SendAction',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	                            },
       'bases' => [  'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::SendSignalAction',  ],
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
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action');
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction');
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction');
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::SendSignalAction');
  }

  $self->UMMF::UML::MetaModel::OCL::Expressions::SendAction::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::SendSignalAction::___initialize;

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
  $self->UMMF::UML::MetaModel::OCL::Expressions::SendAction::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::SendSignalAction::___create();

  $self;
}




#################################################################
# Attributes
#




#################################################################
# Association
#





# End of Class SendAction


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

