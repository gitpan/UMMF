# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction;

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

UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<0..*> : C<> ----E<gt>  C<signal> : UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal>

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
use UMMF::UML::MetaModel::__ObjectBase qw(:__ummf_array);


#################################################################
# Generalizations
#

use base qw(
  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction



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

  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaBroadcastSignalAction>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction>.
Other receivers will return false.

=cut
sub isaBroadcastSignalAction { 1 }


=head2 C<isaBehavioral_Elements__Actions__Messaging_Actions__BroadcastSignalAction>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction>.
Other receivers will return false.
This is the fully qualified version of the C<isaBroadcastSignalAction> method.

=cut
sub isaBehavioral_Elements__Actions__Messaging_Actions__BroadcastSignalAction { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction' }



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
     'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction' =>
     {
       'table' => 'Behavioral_Elements__Actions__Messaging_Actions__BroadcastSignalAction',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'signal'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal',

                                             'col' => 'signal', 

                                                                                                                   }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction',  ],
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
  #   0..*
  #  <--> 
  #  signal 1 UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal.
    if ( defined $self->{'signal'} ) {
    my $x = $self->{'signal'};
    $self->{'signal'} = undef;
    $self->set_signal($x);
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
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action');
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction');
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction');
  }

  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction::___initialize;

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
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::PrimitiveAction::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::ExplicitInvocationAction::___create();

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
# AssociationEnd  <---> signal
# type = UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal
# multiplicity = 1
# ordering = 

=head2 C<signal>

  my $val = $obj->signal;

Returns the AssociationEnd C<signal> value of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal>.

=cut
sub signal ($)
{
  my ($self) = @_;
		  
  $self->{'signal'};
}


=head2 C<set_signal>

  $obj->set_signal($val);

Sets the AssociationEnd C<signal> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal>.
Returns C<$obj>.

=cut
sub set_signal ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'signal'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction.signal") }

    # Recursion lock
        $self->{'signal'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_signal>

  $obj->add_signal($val);

Adds the AssociationEnd C<signal> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_signal ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'signal'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction.signal");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::Actions::Messaging_Actions::BroadcastSignalAction::signal: too many")
    # if defined $self->{'signal'};

    # Recursion lock
        $self->{'signal'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_signal>

  $obj->remove_signal($val);

Removes the AssociationEnd C<signal> value C<$val>.
Returns C<$obj>.

=cut
sub remove_signal ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'signal'}) eq $val ) { # Recursion lock
    $val = $self->{'signal'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_signal>

  $obj->clear_signal;

Clears the AssociationEnd C<signal> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal>.
Returns C<$obj>.

=cut
sub clear_signal ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'signal'}) ) { # Recursion lock
    my $val = $self->{'signal'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_signal>

  $obj->count_signal;

Returns the number of elements of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Signal> associated with C<signal>.

=cut
sub count_signal ($)
{
  my ($self) = @_;

  my $x = $self->{'signal'};

  defined $x ? 1 : 0;
}







# End of Class BroadcastSignalAction


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

