# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: Perl.txt,v 1.77 2006/05/14 01:40:03 kstephens Exp $

package UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow;

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

UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow -- 

=head1 VERSION

1.5

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<consequent> : I<THIS> C<0..*> E<lt>---E<gt>  C<predecessor> : UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action C<1>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<antecedent> : I<THIS> C<0..*> E<lt>---E<gt>  C<successor> : UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action C<1>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>

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
  UMMF::UML_1_5::Foundation::Core::ModelElement



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

  UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow')  ;
}


=head2 C<__typecheck>

  UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaControlFlow>


Returns true if receiver is a L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow>.
Other receivers will return false.

=cut
sub isaControlFlow { 1 }


=head2 C<isaBehavioral_Elements__Actions__Action_Foundation__ControlFlow>


Returns true if receiver is a L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow>.
Other receivers will return false.
This is the fully qualified version of the C<isaControlFlow> method.

=cut
sub isaBehavioral_Elements__Actions__Action_Foundation__ControlFlow { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::Actions::Action_Foundation::ControlFlow'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::Actions::Action_Foundation::ControlFlow' }



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
     'UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow' =>
     {
       'table' => 'Behavioral_Elements__Actions__Action_Foundation__ControlFlow',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'predecessor'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action',

                                             'col' => 'predecessor', 

                                                                                                                   }
      ,
                  	 	       'successor'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action',

                                             'col' => 'successor', 

                                                                                                                   }
      ,
                         },
       'bases' => [  'UMMF::UML_1_5::Foundation::Core::ModelElement',  ],
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
  #  consequent 0..*
  #  <--> 
  #  predecessor 1 UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action.
    if ( defined $self->{'predecessor'} ) {
    my $x = $self->{'predecessor'};
    $self->{'predecessor'} = undef;
    $self->set_predecessor($x);
  }
  
  # AssociationEnd 
  #  antecedent 0..*
  #  <--> 
  #  successor 1 UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action.
    if ( defined $self->{'successor'} ) {
    my $x = $self->{'successor'};
    $self->{'successor'} = undef;
    $self->set_successor($x);
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
  }

  $self->UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::Element::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::ModelElement::___initialize;

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
  $self->UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow::___create(@args);
  $self->UMMF::UML_1_5::Foundation::Core::Element::___create();
  $self->UMMF::UML_1_5::Foundation::Core::ModelElement::___create();

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
# AssociationEnd consequent <---> predecessor
# type = UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action
# multiplicity = 1
# ordering = 

=head2 C<predecessor>

  my $val = $obj->predecessor;

Returns the AssociationEnd C<predecessor> value of type L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>.

=cut
sub predecessor ($)
{
  my ($self) = @_;
		  
  $self->{'predecessor'};
}


=head2 C<set_predecessor>

  $obj->set_predecessor($val);

Sets the AssociationEnd C<predecessor> value.
C<$val> must of type L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>.
Returns C<$obj>.

=cut
sub set_predecessor ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'predecessor'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action')->__typecheck($val, "UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow.predecessor") }

    # Recursion lock
        $self->{'predecessor'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_consequent($self) if $old;
    $val->add_consequent($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_predecessor>

  $obj->add_predecessor($val);

Adds the AssociationEnd C<predecessor> value.
C<$val> must of type L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_predecessor ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'predecessor'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action')->__typecheck($val, "UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow.predecessor");
      
    # confess("UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow::predecessor: too many")
    # if defined $self->{'predecessor'};

    # Recursion lock
        $self->{'predecessor'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_consequent($self) if $old;
    $val->add_consequent($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_predecessor>

  $obj->remove_predecessor($val);

Removes the AssociationEnd C<predecessor> value C<$val>.
Returns C<$obj>.

=cut
sub remove_predecessor ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'predecessor'}) eq $val ) { # Recursion lock
    $val = $self->{'predecessor'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_consequent($self) if $old;
    $val->add_consequent($self)    if $val;

  
  }
}


=head2 C<clear_predecessor>

  $obj->clear_predecessor;

Clears the AssociationEnd C<predecessor> links to L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>.
Returns C<$obj>.

=cut
sub clear_predecessor ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'predecessor'}) ) { # Recursion lock
    my $val = $self->{'predecessor'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_consequent($self) if $old;
    $val->add_consequent($self)    if $val;

    }

  $self;
}


=head2 C<count_predecessor>

  $obj->count_predecessor;

Returns the number of elements of type L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action> associated with C<predecessor>.

=cut
sub count_predecessor ($)
{
  my ($self) = @_;

  my $x = $self->{'predecessor'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd antecedent <---> successor
# type = UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action
# multiplicity = 1
# ordering = 

=head2 C<successor>

  my $val = $obj->successor;

Returns the AssociationEnd C<successor> value of type L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>.

=cut
sub successor ($)
{
  my ($self) = @_;
		  
  $self->{'successor'};
}


=head2 C<set_successor>

  $obj->set_successor($val);

Sets the AssociationEnd C<successor> value.
C<$val> must of type L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>.
Returns C<$obj>.

=cut
sub set_successor ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'successor'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action')->__typecheck($val, "UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow.successor") }

    # Recursion lock
        $self->{'successor'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_antecedent($self) if $old;
    $val->add_antecedent($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_successor>

  $obj->add_successor($val);

Adds the AssociationEnd C<successor> value.
C<$val> must of type L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_successor ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'successor'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action')->__typecheck($val, "UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow.successor");
      
    # confess("UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::ControlFlow::successor: too many")
    # if defined $self->{'successor'};

    # Recursion lock
        $self->{'successor'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_antecedent($self) if $old;
    $val->add_antecedent($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_successor>

  $obj->remove_successor($val);

Removes the AssociationEnd C<successor> value C<$val>.
Returns C<$obj>.

=cut
sub remove_successor ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'successor'}) eq $val ) { # Recursion lock
    $val = $self->{'successor'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_antecedent($self) if $old;
    $val->add_antecedent($self)    if $val;

  
  }
}


=head2 C<clear_successor>

  $obj->clear_successor;

Clears the AssociationEnd C<successor> links to L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action>.
Returns C<$obj>.

=cut
sub clear_successor ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'successor'}) ) { # Recursion lock
    my $val = $self->{'successor'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_antecedent($self) if $old;
    $val->add_antecedent($self)    if $val;

    }

  $self;
}


=head2 C<count_successor>

  $obj->count_successor;

Returns the number of elements of type L<UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML_1_5::Behavioral_Elements::Actions::Action_Foundation::Action> associated with C<successor>.

=cut
sub count_successor ($)
{
  my ($self) = @_;

  my $x = $self->{'successor'};

  defined $x ? 1 : 0;
}







# End of Class ControlFlow


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
