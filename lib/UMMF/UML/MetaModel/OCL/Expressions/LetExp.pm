# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::OCL::Expressions::LetExp;

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

UMMF::UML::MetaModel::OCL::Expressions::LetExp -- 

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


=head2 C<0..1> : C<> ----E<gt>  C<in> : UMMF::UML::MetaModel::OCL::Expressions::OclExpression C<1>



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


=head2 C<0..1> : C<> ----E<gt>  C<variable> : UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>

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

  UMMF::UML::MetaModel::OCL::Expressions::LetExp->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::OCL::Expressions::LetExp|UMMF::UML::MetaModel::OCL::Expressions::LetExp>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::OCL::Expressions::LetExp')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::OCL::Expressions::LetExp->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::OCL::Expressions::LetExp->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::OCL::Expressions::LetExp' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaLetExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::LetExp|UMMF::UML::MetaModel::OCL::Expressions::LetExp>.
Other receivers will return false.

=cut
sub isaLetExp { 1 }


=head2 C<isaOCL__Expressions__LetExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::LetExp|UMMF::UML::MetaModel::OCL::Expressions::LetExp>.
Other receivers will return false.
This is the fully qualified version of the C<isaLetExp> method.

=cut
sub isaOCL__Expressions__LetExp { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'OCL::Expressions::LetExp'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'OCL::Expressions::LetExp' }



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
     'UMMF::UML::MetaModel::OCL::Expressions::LetExp' =>
     {
       'table' => 'OCL__Expressions__LetExp',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'in'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::OclExpression',

                                             'col' => 'in', 

                                                                                 'aggreg' => '1', 

                                           }
      ,
                  	 	       'variable'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration',

                                             'col' => 'variable', 

                                                                                 'aggreg' => '1', 

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
  #   0..1
  #  <--> 
  #  in 1 UMMF::UML::MetaModel::OCL::Expressions::OclExpression.
    if ( defined $self->{'in'} ) {
    my $x = $self->{'in'};
    $self->{'in'} = undef;
    $self->set_in($x);
  }
  
  # AssociationEnd 
  #   0..1
  #  <--> 
  #  variable 1 UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration.
    if ( defined $self->{'variable'} ) {
    my $x = $self->{'variable'};
    $self->{'variable'} = undef;
    $self->set_variable($x);
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

  $self->UMMF::UML::MetaModel::OCL::Expressions::LetExp::___initialize;
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
  $self->UMMF::UML::MetaModel::OCL::Expressions::LetExp::___create(@args);
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
# AssociationEnd  <---> in
# type = UMMF::UML::MetaModel::OCL::Expressions::OclExpression
# multiplicity = 1
# ordering = 

=head2 C<in>

  my $val = $obj->in;

Returns the AssociationEnd C<in> value of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.

=cut
sub in ($)
{
  my ($self) = @_;
		  
  $self->{'in'};
}


=head2 C<set_in>

  $obj->set_in($val);

Sets the AssociationEnd C<in> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub set_in ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'in'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclExpression')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::LetExp.in") }

    # Recursion lock
        $self->{'in'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_in>

  $obj->add_in($val);

Adds the AssociationEnd C<in> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_in ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'in'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclExpression')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::LetExp.in");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::LetExp::in: too many")
    # if defined $self->{'in'};

    # Recursion lock
        $self->{'in'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_in>

  $obj->remove_in($val);

Removes the AssociationEnd C<in> value C<$val>.
Returns C<$obj>.

=cut
sub remove_in ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'in'}) eq $val ) { # Recursion lock
    $val = $self->{'in'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_in>

  $obj->clear_in;

Clears the AssociationEnd C<in> links to L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub clear_in ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'in'}) ) { # Recursion lock
    my $val = $self->{'in'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_in>

  $obj->count_in;

Returns the number of elements of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression> associated with C<in>.

=cut
sub count_in ($)
{
  my ($self) = @_;

  my $x = $self->{'in'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd  <---> variable
# type = UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration
# multiplicity = 1
# ordering = 

=head2 C<variable>

  my $val = $obj->variable;

Returns the AssociationEnd C<variable> value of type L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>.

=cut
sub variable ($)
{
  my ($self) = @_;
		  
  $self->{'variable'};
}


=head2 C<set_variable>

  $obj->set_variable($val);

Sets the AssociationEnd C<variable> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>.
Returns C<$obj>.

=cut
sub set_variable ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'variable'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::LetExp.variable") }

    # Recursion lock
        $self->{'variable'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_variable>

  $obj->add_variable($val);

Adds the AssociationEnd C<variable> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_variable ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'variable'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::LetExp.variable");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::LetExp::variable: too many")
    # if defined $self->{'variable'};

    # Recursion lock
        $self->{'variable'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_variable>

  $obj->remove_variable($val);

Removes the AssociationEnd C<variable> value C<$val>.
Returns C<$obj>.

=cut
sub remove_variable ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'variable'}) eq $val ) { # Recursion lock
    $val = $self->{'variable'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_variable>

  $obj->clear_variable;

Clears the AssociationEnd C<variable> links to L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>.
Returns C<$obj>.

=cut
sub clear_variable ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'variable'}) ) { # Recursion lock
    my $val = $self->{'variable'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_variable>

  $obj->count_variable;

Returns the number of elements of type L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration> associated with C<variable>.

=cut
sub count_variable ($)
{
  my ($self) = @_;

  my $x = $self->{'variable'};

  defined $x ? 1 : 0;
}







# End of Class LetExp


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

