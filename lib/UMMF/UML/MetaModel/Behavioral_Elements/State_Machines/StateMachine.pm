# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine;

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

UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<0..*> : C<behavior> E<lt>---E<gt>  C<context> : UMMF::UML::MetaModel::Foundation::Core::ModelElement C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<aggregate>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<submachine> E<lt>---E<gt>  C<submachineState> : UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<0..1> : C<stateMachine> E<lt>---E<gt>  C<top> : UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..1> : C<stateMachine> E<lt>---E<gt>  C<transitions> : UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition>

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
  UMMF::UML::MetaModel::Foundation::Core::ModelElement



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

  UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaStateMachine>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine>.
Other receivers will return false.

=cut
sub isaStateMachine { 1 }


=head2 C<isaBehavioral_Elements__State_Machines__StateMachine>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine>.
Other receivers will return false.
This is the fully qualified version of the C<isaStateMachine> method.

=cut
sub isaBehavioral_Elements__State_Machines__StateMachine { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::State_Machines::StateMachine'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::State_Machines::StateMachine' }



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
     'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine' =>
     {
       'table' => 'Behavioral_Elements__State_Machines__StateMachine',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'context'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::ModelElement',

                  'null' => '1', 

                                    'col' => 'context', 

                                                                                                                   }
      ,
                  	 	       'submachineState'
       => {
	 'type_impl' => 'iset',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState',

                           'table' => 'Behavioral_Elements__State_Machines__StateMachine__submachineState', 

                                                               'coll' => 'submachine',

                                                                               }
      ,
                  	 	       'top'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State',

                                             'col' => 'top', 

                                                                                 'aggreg' => '1', 

                                           }
      ,
                  	 	       'transitions'
       => {
	 'type_impl' => 'iset',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition',

                           'table' => 'Behavioral_Elements__State_Machines__StateMachine__transitions', 

                                                               'coll' => 'stateMachine',

                                             'aggreg' => '1', 

                                           }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::Foundation::Core::ModelElement',  ],
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
  #  behavior 0..*
  #  <--> 
  #  context 0..1 UMMF::UML::MetaModel::Foundation::Core::ModelElement.
    if ( defined $self->{'context'} ) {
    my $x = $self->{'context'};
    $self->{'context'} = undef;
    $self->set_context($x);
  }
  
  # AssociationEnd 
  #  submachine 1
  #  <--> 
  #  submachineState 0..* UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState.
    if ( defined $self->{'submachineState'} ) {
    my $x = $self->{'submachineState'};
        $self->{'submachineState'} = Set::Object->new();
        $self->set_submachineState(@$x);
  }
  
  # AssociationEnd 
  #  stateMachine 0..1
  #  <--> 
  #  top 1 UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State.
    if ( defined $self->{'top'} ) {
    my $x = $self->{'top'};
    $self->{'top'} = undef;
    $self->set_top($x);
  }
  
  # AssociationEnd 
  #  stateMachine 0..1
  #  <--> 
  #  transitions 0..* UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition.
    if ( defined $self->{'transitions'} ) {
    my $x = $self->{'transitions'};
        $self->{'transitions'} = Set::Object->new();
        $self->set_transitions(@$x);
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
  }

  $self->UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;

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
  $self->UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();

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
# AssociationEnd behavior <---> context
# type = UMMF::UML::MetaModel::Foundation::Core::ModelElement
# multiplicity = 0..1
# ordering = 

=head2 C<context>

  my $val = $obj->context;

Returns the AssociationEnd C<context> value of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.

=cut
sub context ($)
{
  my ($self) = @_;
		  
  $self->{'context'};
}


=head2 C<set_context>

  $obj->set_context($val);

Sets the AssociationEnd C<context> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_context ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'context'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine.context") }

    # Recursion lock
        $self->{'context'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_behavior($self) if $old;
    $val->add_behavior($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_context>

  $obj->add_context($val);

Adds the AssociationEnd C<context> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_context ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'context'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine.context");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine::context: too many")
    # if defined $self->{'context'};

    # Recursion lock
        $self->{'context'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_behavior($self) if $old;
    $val->add_behavior($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_context>

  $obj->remove_context($val);

Removes the AssociationEnd C<context> value C<$val>.
Returns C<$obj>.

=cut
sub remove_context ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'context'}) eq $val ) { # Recursion lock
    $val = $self->{'context'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_behavior($self) if $old;
    $val->add_behavior($self)    if $val;

  
  }
}


=head2 C<clear_context>

  $obj->clear_context;

Clears the AssociationEnd C<context> links to L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_context ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'context'}) ) { # Recursion lock
    my $val = $self->{'context'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_behavior($self) if $old;
    $val->add_behavior($self)    if $val;

    }

  $self;
}


=head2 C<count_context>

  $obj->count_context;

Returns the number of elements of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement> associated with C<context>.

=cut
sub count_context ($)
{
  my ($self) = @_;

  my $x = $self->{'context'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd submachine <---> submachineState
# type = UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState
# multiplicity = 0..*
# ordering = 

=head2 C<submachineState>

  my @val = $obj->submachineState;
  my $ary_val = $obj->submachineState;

Returns the AssociationEnd C<submachineState> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub submachineState ($)
{
  my ($self) = @_;

    my $x = $self->{'submachineState'};

  # confess("Container for submachineState $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_submachineState>

  $obj->set_submachineState(@val);

Sets the AssociationEnd C<submachineState> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState>.
Returns C<$obj>.

=cut
sub set_submachineState ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_submachineState;
  $self->add_submachineState(@val);
}


=head2 C<add_submachineState>

  $obj->add_submachineState(@val);

Adds AssociationEnd C<submachineState> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState>.
Returns C<$obj>.

=cut
sub add_submachineState ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'submachineState'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine.submachineState");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_submachine($self) if $old;
    $val->add_submachine($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_submachineState>

  $obj->remove_submachineState(@val);

Removes the AssociationEnd C<submachineState> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState>.
Returns C<$obj>.

=cut
sub remove_submachineState ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'submachineState'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine.submachineState");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_submachine($self) if $old;
    $val->add_submachine($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_submachineState>

  $obj->clear_submachineState;

Clears the AssociationEnd C<submachineState> links to L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::SubmachineState>.
Returns C<$obj>.

=cut
sub clear_submachineState ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'submachineState'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'submachineState'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_submachine($self) if $old;
    $val->add_submachine($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_submachineState>

  $obj->count_submachineState;

Returns the number of elements associated with C<submachineState>.

=cut
sub count_submachineState ($)
{
  my ($self) = @_;

  my $x = $self->{'submachineState'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd stateMachine <---> top
# type = UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State
# multiplicity = 1
# ordering = 

=head2 C<top>

  my $val = $obj->top;

Returns the AssociationEnd C<top> value of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State>.

=cut
sub top ($)
{
  my ($self) = @_;
		  
  $self->{'top'};
}


=head2 C<set_top>

  $obj->set_top($val);

Sets the AssociationEnd C<top> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State>.
Returns C<$obj>.

=cut
sub set_top ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'top'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine.top") }

    # Recursion lock
        $self->{'top'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_stateMachine($self) if $old;
    $val->add_stateMachine($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_top>

  $obj->add_top($val);

Adds the AssociationEnd C<top> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_top ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'top'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine.top");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine::top: too many")
    # if defined $self->{'top'};

    # Recursion lock
        $self->{'top'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_stateMachine($self) if $old;
    $val->add_stateMachine($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_top>

  $obj->remove_top($val);

Removes the AssociationEnd C<top> value C<$val>.
Returns C<$obj>.

=cut
sub remove_top ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'top'}) eq $val ) { # Recursion lock
    $val = $self->{'top'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_stateMachine($self) if $old;
    $val->add_stateMachine($self)    if $val;

  
  }
}


=head2 C<clear_top>

  $obj->clear_top;

Clears the AssociationEnd C<top> links to L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State>.
Returns C<$obj>.

=cut
sub clear_top ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'top'}) ) { # Recursion lock
    my $val = $self->{'top'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_stateMachine($self) if $old;
    $val->add_stateMachine($self)    if $val;

    }

  $self;
}


=head2 C<count_top>

  $obj->count_top;

Returns the number of elements of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State> associated with C<top>.

=cut
sub count_top ($)
{
  my ($self) = @_;

  my $x = $self->{'top'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd stateMachine <---> transitions
# type = UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition
# multiplicity = 0..*
# ordering = 

=head2 C<transitions>

  my @val = $obj->transitions;
  my $ary_val = $obj->transitions;

Returns the AssociationEnd C<transitions> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub transitions ($)
{
  my ($self) = @_;

    my $x = $self->{'transitions'};

  # confess("Container for transitions $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_transitions>

  $obj->set_transitions(@val);

Sets the AssociationEnd C<transitions> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition>.
Returns C<$obj>.

=cut
sub set_transitions ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_transitions;
  $self->add_transitions(@val);
}


=head2 C<add_transitions>

  $obj->add_transitions(@val);

Adds AssociationEnd C<transitions> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition>.
Returns C<$obj>.

=cut
sub add_transitions ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'transitions'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine.transitions");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_stateMachine($self) if $old;
    $val->add_stateMachine($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_transitions>

  $obj->remove_transitions(@val);

Removes the AssociationEnd C<transitions> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition>.
Returns C<$obj>.

=cut
sub remove_transitions ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'transitions'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateMachine.transitions");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_stateMachine($self) if $old;
    $val->add_stateMachine($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_transitions>

  $obj->clear_transitions;

Clears the AssociationEnd C<transitions> links to L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::Transition>.
Returns C<$obj>.

=cut
sub clear_transitions ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'transitions'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'transitions'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_stateMachine($self) if $old;
    $val->add_stateMachine($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_transitions>

  $obj->count_transitions;

Returns the number of elements associated with C<transitions>.

=cut
sub count_transitions ($)
{
  my ($self) = @_;

  my $x = $self->{'transitions'};

    defined $x ? $x->size : 0;
  }







# End of Class StateMachine


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

