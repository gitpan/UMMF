# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp;

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

UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<1> : C<> ----E<gt>  C<arguments> : UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg|UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<ordered>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<ARRAY>

=back


=head2 C<1> : C<> ----E<gt>  C<calledOperation> : UMMF::UML::MetaModel::OCL::Expressions::CallAction C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::CallAction|UMMF::UML::MetaModel::OCL::Expressions::CallAction>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<> ----E<gt>  C<sendSignal> : UMMF::UML::MetaModel::OCL::Expressions::SendAction C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::SendAction|UMMF::UML::MetaModel::OCL::Expressions::SendAction>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<> ----E<gt>  C<target> : UMMF::UML::MetaModel::OCL::Expressions::OclExpression C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>

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
  UMMF::UML::MetaModel::OCL::Expressions::OclExpression



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

  UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp|UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaOclMessageExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp|UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp>.
Other receivers will return false.

=cut
sub isaOclMessageExp { 1 }


=head2 C<isaOCL__Expressions__OclMessageExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp|UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp>.
Other receivers will return false.
This is the fully qualified version of the C<isaOclMessageExp> method.

=cut
sub isaOCL__Expressions__OclMessageExp { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'OCL::Expressions::OclMessageExp'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'OCL::Expressions::OclMessageExp' }



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
     'UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp' =>
     {
       'table' => 'OCL__Expressions__OclMessageExp',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'arguments'
       => {
	 'type_impl' => 'iarray',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg',

                           'table' => 'OCL__Expressions__OclMessageExp__arguments', 

                                                               'coll' => 'oclMessageExp',

                  'slot' => 'oclMessageExp_i', 

                                                                      }
      ,
                  	 	       'calledOperation'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::CallAction',

                                             'col' => 'calledOperation', 

                                                                                                                   }
      ,
                  	 	       'sendSignal'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::SendAction',

                                             'col' => 'sendSignal', 

                                                                                                                   }
      ,
                  	 	       'target'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::OclExpression',

                                             'col' => 'target', 

                                                                                                                   }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::OCL::Expressions::OclExpression',  ],
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
  #   1
  #  <--> 
  #  arguments 0..* UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg.
    if ( defined $self->{'arguments'} ) {
    my $x = $self->{'arguments'};
        $self->{'arguments'} = [ ];
        $self->set_arguments(@$x);
  }
  
  # AssociationEnd 
  #   1
  #  <--> 
  #  calledOperation 1 UMMF::UML::MetaModel::OCL::Expressions::CallAction.
    if ( defined $self->{'calledOperation'} ) {
    my $x = $self->{'calledOperation'};
    $self->{'calledOperation'} = undef;
    $self->set_calledOperation($x);
  }
  
  # AssociationEnd 
  #   1
  #  <--> 
  #  sendSignal 1 UMMF::UML::MetaModel::OCL::Expressions::SendAction.
    if ( defined $self->{'sendSignal'} ) {
    my $x = $self->{'sendSignal'};
    $self->{'sendSignal'} = undef;
    $self->set_sendSignal($x);
  }
  
  # AssociationEnd 
  #   1
  #  <--> 
  #  target 1 UMMF::UML::MetaModel::OCL::Expressions::OclExpression.
    if ( defined $self->{'target'} ) {
    my $x = $self->{'target'};
    $self->{'target'} = undef;
    $self->set_target($x);
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
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclExpression');
  }

  $self->UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::OCL::Expressions::OclExpression::___initialize;

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
  $self->UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::OCL::Expressions::OclExpression::___create();

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
# AssociationEnd  <---> arguments
# type = UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg
# multiplicity = 0..*
# ordering = ordered

=head2 C<arguments>

  my @val = $obj->arguments;
  my $ary_val = $obj->arguments;

Returns the AssociationEnd C<arguments> values of type L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg|UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub arguments ($)
{
  my ($self) = @_;

    my $x = $self->{'arguments'} ||= [ ];

  wantarray ? @{$x} : $x;
  
}


=head2 C<index_arguments>

  my $x = $obj->index_arguments($i);
  my @x = $obj->index_arguments($i, $count);

In scalar context, returns the value of AssociationEnd C<arguments> at index C<$i>.
In array context, returns the values between index C<$i> and C<$i + $count - 1>, inclusive.

=cut
sub index_arguments ($$@)
{
  my ($self, $i, $count) = @_;

  ;

  my $val = $self->{'arguments'} ||= [ ];

  ;

  wantarray ? $val->[$i .. (defined $count ? $i + $count - 1 : $i)]
            : $val->[$i];
}


=head2 C<index_of_arguments>

  my $index = $obj->index_of_arguments($val);

Returns the index of C<$val> in AssociationEnd C<arguments>.
Return C<undef> if C<$val> is not in C<arguments>.

=cut
sub index_of_arguments ($$)
{
  my ($self, $x) = @_;

  ;

  my $val = $self->{'arguments'} ||= [ ];

  ;

  __ummf_array_index($val, $x);
}


=head2 C<set_arguments>

  $obj->set_arguments(@val);

Sets the AssociationEnd C<arguments> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg|UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg>.
Returns C<$obj>.

=cut
sub set_arguments ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_arguments;
  $self->add_arguments(@val);
}


=head2 C<set_index_arguments>

  $obj->set_index_arguments($i, $val);

Sets the value of AssociationEnd C<arguments> at index C<$i>.
Returns self.

=cut
sub set_index_arguments ($$$)
{
  my ($self, $i, $val) = @_;

  ;

  my $x = $self->{'arguments'} ||= [ ];

  no warnings;
  my $old;
  if ( ($old = $x->[$i]) ne $val) {
    # Recursion lock
        $x->[$i] = $val
    ;

    # Remove and add associations with other ends.
        
    ;
  }

  $self;
}


=head2 C<add_arguments>

  $obj->add_arguments(@val);

Adds AssociationEnd C<arguments> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg|UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg>.
Returns C<$obj>.

=cut
sub add_arguments ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'arguments'} ||= [ ];
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if grep($_ eq $val, @$x);
        $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp.arguments");

    # Recursion lock
        push(@{$x}, $val);
        
    # Remove and add associations with other ends.
          }
  
  $self;
}


=head2 C<add_index_arguments>

  $obj->add_index_arguments($i, @val);

Adds AssociationEnd C<arguments> values at index C<$i>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg|UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg>.
Returns C<$obj>.

=cut
sub add_index_arguments ($$@)
{
  my ($self, $i, @val) = @_;

  
    my $x = $self->{'arguments'} ||= [ ];
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if grep($_ eq $val, @$x);
        $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp.arguments");

    # Recursion lock
        splice(@{$x}, $i, 0, $val); # Recursion lock
        ++ $i;
    
    # Remove and add associations with other ends.
          }
  
  
  $self;
}


=head2 C<remove_arguments>

  $obj->remove_arguments(@val);

Removes the AssociationEnd C<arguments> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg|UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg>.
Returns C<$obj>.

=cut
sub remove_arguments ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'arguments'} ||= [ ];
  
  for my $old ( @val ) {
    # Recursion lock
        my $i; # index of $old in @$x.
    next unless defined($i = __ummf_array_index($x, $old));
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp.arguments");

    # Recursion lock
        splice(@$x, $i, 1);     
    $val = undef;

    # Remove associations with other ends.

        ;

  }
  
  $self;
}


=head2 C<clear_arguments>

  $obj->clear_arguments;

Clears the AssociationEnd C<arguments> links to L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg|UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg>.
Returns C<$obj>.

=cut
sub clear_arguments ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'arguments'} ||= [ ];
  
  my $val; # Place holder for other MACRO.
  
    $self->{'arguments'} = [ ];  # Recursion lock
  for my $old ( @$x ) { # Recursion lock
  
    # Remove associations with other ends.

        ;

  }
  
  $self;
}


=head2 C<count_arguments>

  $obj->count_arguments;

Returns the number of elements associated with C<arguments>.

=cut
sub count_arguments ($)
{
  my ($self) = @_;

  my $x = $self->{'arguments'};

    defined $x ? scalar @$x : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd  <---> calledOperation
# type = UMMF::UML::MetaModel::OCL::Expressions::CallAction
# multiplicity = 1
# ordering = 

=head2 C<calledOperation>

  my $val = $obj->calledOperation;

Returns the AssociationEnd C<calledOperation> value of type L<UMMF::UML::MetaModel::OCL::Expressions::CallAction|UMMF::UML::MetaModel::OCL::Expressions::CallAction>.

=cut
sub calledOperation ($)
{
  my ($self) = @_;
		  
  $self->{'calledOperation'};
}


=head2 C<set_calledOperation>

  $obj->set_calledOperation($val);

Sets the AssociationEnd C<calledOperation> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::CallAction|UMMF::UML::MetaModel::OCL::Expressions::CallAction>.
Returns C<$obj>.

=cut
sub set_calledOperation ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'calledOperation'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::OCL::Expressions::CallAction')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp.calledOperation") }

    # Recursion lock
        $self->{'calledOperation'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_calledOperation>

  $obj->add_calledOperation($val);

Adds the AssociationEnd C<calledOperation> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::CallAction|UMMF::UML::MetaModel::OCL::Expressions::CallAction>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_calledOperation ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'calledOperation'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::CallAction')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp.calledOperation");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp::calledOperation: too many")
    # if defined $self->{'calledOperation'};

    # Recursion lock
        $self->{'calledOperation'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_calledOperation>

  $obj->remove_calledOperation($val);

Removes the AssociationEnd C<calledOperation> value C<$val>.
Returns C<$obj>.

=cut
sub remove_calledOperation ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'calledOperation'}) eq $val ) { # Recursion lock
    $val = $self->{'calledOperation'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_calledOperation>

  $obj->clear_calledOperation;

Clears the AssociationEnd C<calledOperation> links to L<UMMF::UML::MetaModel::OCL::Expressions::CallAction|UMMF::UML::MetaModel::OCL::Expressions::CallAction>.
Returns C<$obj>.

=cut
sub clear_calledOperation ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'calledOperation'}) ) { # Recursion lock
    my $val = $self->{'calledOperation'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_calledOperation>

  $obj->count_calledOperation;

Returns the number of elements of type L<UMMF::UML::MetaModel::OCL::Expressions::CallAction|UMMF::UML::MetaModel::OCL::Expressions::CallAction> associated with C<calledOperation>.

=cut
sub count_calledOperation ($)
{
  my ($self) = @_;

  my $x = $self->{'calledOperation'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd  <---> sendSignal
# type = UMMF::UML::MetaModel::OCL::Expressions::SendAction
# multiplicity = 1
# ordering = 

=head2 C<sendSignal>

  my $val = $obj->sendSignal;

Returns the AssociationEnd C<sendSignal> value of type L<UMMF::UML::MetaModel::OCL::Expressions::SendAction|UMMF::UML::MetaModel::OCL::Expressions::SendAction>.

=cut
sub sendSignal ($)
{
  my ($self) = @_;
		  
  $self->{'sendSignal'};
}


=head2 C<set_sendSignal>

  $obj->set_sendSignal($val);

Sets the AssociationEnd C<sendSignal> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::SendAction|UMMF::UML::MetaModel::OCL::Expressions::SendAction>.
Returns C<$obj>.

=cut
sub set_sendSignal ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'sendSignal'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::OCL::Expressions::SendAction')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp.sendSignal") }

    # Recursion lock
        $self->{'sendSignal'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_sendSignal>

  $obj->add_sendSignal($val);

Adds the AssociationEnd C<sendSignal> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::SendAction|UMMF::UML::MetaModel::OCL::Expressions::SendAction>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_sendSignal ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'sendSignal'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::SendAction')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp.sendSignal");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp::sendSignal: too many")
    # if defined $self->{'sendSignal'};

    # Recursion lock
        $self->{'sendSignal'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_sendSignal>

  $obj->remove_sendSignal($val);

Removes the AssociationEnd C<sendSignal> value C<$val>.
Returns C<$obj>.

=cut
sub remove_sendSignal ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'sendSignal'}) eq $val ) { # Recursion lock
    $val = $self->{'sendSignal'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_sendSignal>

  $obj->clear_sendSignal;

Clears the AssociationEnd C<sendSignal> links to L<UMMF::UML::MetaModel::OCL::Expressions::SendAction|UMMF::UML::MetaModel::OCL::Expressions::SendAction>.
Returns C<$obj>.

=cut
sub clear_sendSignal ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'sendSignal'}) ) { # Recursion lock
    my $val = $self->{'sendSignal'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_sendSignal>

  $obj->count_sendSignal;

Returns the number of elements of type L<UMMF::UML::MetaModel::OCL::Expressions::SendAction|UMMF::UML::MetaModel::OCL::Expressions::SendAction> associated with C<sendSignal>.

=cut
sub count_sendSignal ($)
{
  my ($self) = @_;

  my $x = $self->{'sendSignal'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd  <---> target
# type = UMMF::UML::MetaModel::OCL::Expressions::OclExpression
# multiplicity = 1
# ordering = 

=head2 C<target>

  my $val = $obj->target;

Returns the AssociationEnd C<target> value of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.

=cut
sub target ($)
{
  my ($self) = @_;
		  
  $self->{'target'};
}


=head2 C<set_target>

  $obj->set_target($val);

Sets the AssociationEnd C<target> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub set_target ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'target'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclExpression')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp.target") }

    # Recursion lock
        $self->{'target'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_target>

  $obj->add_target($val);

Adds the AssociationEnd C<target> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_target ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'target'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclExpression')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp.target");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp::target: too many")
    # if defined $self->{'target'};

    # Recursion lock
        $self->{'target'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_target>

  $obj->remove_target($val);

Removes the AssociationEnd C<target> value C<$val>.
Returns C<$obj>.

=cut
sub remove_target ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'target'}) eq $val ) { # Recursion lock
    $val = $self->{'target'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_target>

  $obj->clear_target;

Clears the AssociationEnd C<target> links to L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub clear_target ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'target'}) ) { # Recursion lock
    my $val = $self->{'target'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_target>

  $obj->count_target;

Returns the number of elements of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression> associated with C<target>.

=cut
sub count_target ($)
{
  my ($self) = @_;

  my $x = $self->{'target'};

  defined $x ? 1 : 0;
}







# End of Class OclMessageExp


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

