# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: Perl.txt,v 1.77 2006/05/14 01:40:03 kstephens Exp $

package UMMF::UML_1_5::OCL::Expressions::IterateExp;

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

UMMF::UML_1_5::OCL::Expressions::IterateExp -- 

=head1 VERSION

1.5

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML_1_5::OCL::Expressions::LoopExp|UMMF::UML_1_5::OCL::Expressions::LoopExp>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<baseExpr> : I<THIS> C<0..1> E<lt>---E<gt>  C<result> : UMMF::UML_1_5::OCL::Expressions::VariableDeclaration C<1>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::OCL::Expressions::VariableDeclaration|UMMF::UML_1_5::OCL::Expressions::VariableDeclaration>

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
  UMMF::UML_1_5::OCL::Expressions::LoopExp



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

  UMMF::UML_1_5::OCL::Expressions::IterateExp->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML_1_5::OCL::Expressions::IterateExp|UMMF::UML_1_5::OCL::Expressions::IterateExp>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML_1_5::OCL::Expressions::IterateExp')  ;
}


=head2 C<__typecheck>

  UMMF::UML_1_5::OCL::Expressions::IterateExp->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML_1_5::OCL::Expressions::IterateExp->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML_1_5::OCL::Expressions::IterateExp' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaIterateExp>


Returns true if receiver is a L<UMMF::UML_1_5::OCL::Expressions::IterateExp|UMMF::UML_1_5::OCL::Expressions::IterateExp>.
Other receivers will return false.

=cut
sub isaIterateExp { 1 }


=head2 C<isaOCL__Expressions__IterateExp>


Returns true if receiver is a L<UMMF::UML_1_5::OCL::Expressions::IterateExp|UMMF::UML_1_5::OCL::Expressions::IterateExp>.
Other receivers will return false.
This is the fully qualified version of the C<isaIterateExp> method.

=cut
sub isaOCL__Expressions__IterateExp { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'OCL::Expressions::IterateExp'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'OCL::Expressions::IterateExp' }



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
     'UMMF::UML_1_5::OCL::Expressions::IterateExp' =>
     {
       'table' => 'OCL__Expressions__IterateExp',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'result'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::OCL::Expressions::VariableDeclaration',

                                             'col' => 'result', 

                                                                                 'aggreg' => '1', 

                                           }
      ,
                         },
       'bases' => [  'UMMF::UML_1_5::OCL::Expressions::LoopExp',  ],
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
  #  baseExpr 0..1
  #  <--> 
  #  result 1 UMMF::UML_1_5::OCL::Expressions::VariableDeclaration.
    if ( defined $self->{'result'} ) {
    my $x = $self->{'result'};
    $self->{'result'} = undef;
    $self->set_result($x);
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
    $self->__use('UMMF::UML_1_5::OCL::Expressions::OclExpression');
    $self->__use('UMMF::UML_1_5::OCL::Expressions::PropertyCallExp');
    $self->__use('UMMF::UML_1_5::OCL::Expressions::LoopExp');
  }

  $self->UMMF::UML_1_5::OCL::Expressions::IterateExp::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::Element::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML_1_5::OCL::Expressions::OclExpression::___initialize;
  $self->UMMF::UML_1_5::OCL::Expressions::PropertyCallExp::___initialize;
  $self->UMMF::UML_1_5::OCL::Expressions::LoopExp::___initialize;

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
  $self->UMMF::UML_1_5::OCL::Expressions::IterateExp::___create(@args);
  $self->UMMF::UML_1_5::Foundation::Core::Element::___create();
  $self->UMMF::UML_1_5::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML_1_5::OCL::Expressions::OclExpression::___create();
  $self->UMMF::UML_1_5::OCL::Expressions::PropertyCallExp::___create();
  $self->UMMF::UML_1_5::OCL::Expressions::LoopExp::___create();

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
# AssociationEnd baseExpr <---> result
# type = UMMF::UML_1_5::OCL::Expressions::VariableDeclaration
# multiplicity = 1
# ordering = 

=head2 C<result>

  my $val = $obj->result;

Returns the AssociationEnd C<result> value of type L<UMMF::UML_1_5::OCL::Expressions::VariableDeclaration|UMMF::UML_1_5::OCL::Expressions::VariableDeclaration>.

=cut
sub result ($)
{
  my ($self) = @_;
		  
  $self->{'result'};
}


=head2 C<set_result>

  $obj->set_result($val);

Sets the AssociationEnd C<result> value.
C<$val> must of type L<UMMF::UML_1_5::OCL::Expressions::VariableDeclaration|UMMF::UML_1_5::OCL::Expressions::VariableDeclaration>.
Returns C<$obj>.

=cut
sub set_result ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'result'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML_1_5::OCL::Expressions::VariableDeclaration')->__typecheck($val, "UMMF::UML_1_5::OCL::Expressions::IterateExp.result") }

    # Recursion lock
        $self->{'result'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_baseExpr($self) if $old;
    $val->add_baseExpr($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_result>

  $obj->add_result($val);

Adds the AssociationEnd C<result> value.
C<$val> must of type L<UMMF::UML_1_5::OCL::Expressions::VariableDeclaration|UMMF::UML_1_5::OCL::Expressions::VariableDeclaration>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_result ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'result'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML_1_5::OCL::Expressions::VariableDeclaration')->__typecheck($val, "UMMF::UML_1_5::OCL::Expressions::IterateExp.result");
      
    # confess("UMMF::UML_1_5::OCL::Expressions::IterateExp::result: too many")
    # if defined $self->{'result'};

    # Recursion lock
        $self->{'result'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_baseExpr($self) if $old;
    $val->add_baseExpr($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_result>

  $obj->remove_result($val);

Removes the AssociationEnd C<result> value C<$val>.
Returns C<$obj>.

=cut
sub remove_result ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'result'}) eq $val ) { # Recursion lock
    $val = $self->{'result'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_baseExpr($self) if $old;
    $val->add_baseExpr($self)    if $val;

  
  }
}


=head2 C<clear_result>

  $obj->clear_result;

Clears the AssociationEnd C<result> links to L<UMMF::UML_1_5::OCL::Expressions::VariableDeclaration|UMMF::UML_1_5::OCL::Expressions::VariableDeclaration>.
Returns C<$obj>.

=cut
sub clear_result ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'result'}) ) { # Recursion lock
    my $val = $self->{'result'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_baseExpr($self) if $old;
    $val->add_baseExpr($self)    if $val;

    }

  $self;
}


=head2 C<count_result>

  $obj->count_result;

Returns the number of elements of type L<UMMF::UML_1_5::OCL::Expressions::VariableDeclaration|UMMF::UML_1_5::OCL::Expressions::VariableDeclaration> associated with C<result>.

=cut
sub count_result ($)
{
  my ($self) = @_;

  my $x = $self->{'result'};

  defined $x ? 1 : 0;
}







# End of Class IterateExp


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
