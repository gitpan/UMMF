# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::OCL::Expressions::OclExpression;

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

UMMF::UML::MetaModel::OCL::Expressions::OclExpression -- 

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


=head2 C<1> : C<condition> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::IfExp C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::IfExp|UMMF::UML::MetaModel::OCL::Expressions::IfExp>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

=item aggregation = C<composite>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<elseExpression> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::IfExp C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::IfExp|UMMF::UML::MetaModel::OCL::Expressions::IfExp>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

=item aggregation = C<composite>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<0..1> : C<expression> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg|UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

=item aggregation = C<none>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<first> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::CollectionRange C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::CollectionRange|UMMF::UML::MetaModel::OCL::Expressions::CollectionRange>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

=item aggregation = C<none>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<in> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::LetExp C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::LetExp|UMMF::UML::MetaModel::OCL::Expressions::LetExp>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

=item aggregation = C<composite>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<0..1> : C<initExpression> E<lt>---E<gt>  C<initializedVariable> : UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<composite>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<item> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::CollectionItem C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::CollectionItem|UMMF::UML::MetaModel::OCL::Expressions::CollectionItem>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

=item aggregation = C<none>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<last> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::CollectionRange C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::CollectionRange|UMMF::UML::MetaModel::OCL::Expressions::CollectionRange>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

=item aggregation = C<none>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<body> E<lt>---E<gt>  C<loopExp> : UMMF::UML::MetaModel::OCL::Expressions::LoopExp C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::LoopExp|UMMF::UML::MetaModel::OCL::Expressions::LoopExp>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<composite>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<qualifiers> E<lt>---E<gt>  C<navigationCallExp> : UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<composite>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<arguments> E<lt>---E<gt>  C<parentOperation> : UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp|UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<composite>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<target> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::OclMessageExp C<1>



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


=head2 C<1> : C<thenExpression> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::IfExp C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::IfExp|UMMF::UML::MetaModel::OCL::Expressions::IfExp>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

=item aggregation = C<composite>

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

  UMMF::UML::MetaModel::OCL::Expressions::OclExpression->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::OCL::Expressions::OclExpression')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::OCL::Expressions::OclExpression->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::OCL::Expressions::OclExpression->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::OCL::Expressions::OclExpression' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaOclExpression>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Other receivers will return false.

=cut
sub isaOclExpression { 1 }


=head2 C<isaOCL__Expressions__OclExpression>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Other receivers will return false.
This is the fully qualified version of the C<isaOclExpression> method.

=cut
sub isaOCL__Expressions__OclExpression { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'OCL::Expressions::OclExpression'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'OCL::Expressions::OclExpression' }



=head2 C<__isAbstract>

  $package->__isAbstract;

Returns C<1>.

=cut
sub __isAbstract { 1; }


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
     'UMMF::UML::MetaModel::OCL::Expressions::OclExpression' =>
     {
       'table' => 'OCL__Expressions__OclExpression',
       'abstract' => 1,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	                     	 	                     	 	                     	 	                     	 	                     	 	       'initializedVariable'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration',

                  'null' => '1', 

                                    'col' => 'initializedVariable', 

                                                                                                                   }
      ,
                  	 	                     	 	                     	 	       'loopExp'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::LoopExp',

                  'null' => '1', 

                                    'col' => 'loopExp', 

                                                                                                                   }
      ,
                  	 	       'navigationCallExp'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp',

                  'null' => '1', 

                                    'col' => 'navigationCallExp', 

                                                                                                                   }
      ,
                  	 	       'parentOperation'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp',

                  'null' => '1', 

                                    'col' => 'parentOperation', 

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
  #  initExpression 0..1
  #  <--> 
  #  initializedVariable 0..1 UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration.
    if ( defined $self->{'initializedVariable'} ) {
    my $x = $self->{'initializedVariable'};
    $self->{'initializedVariable'} = undef;
    $self->set_initializedVariable($x);
  }
  
  # AssociationEnd 
  #  body 1
  #  <--> 
  #  loopExp 0..1 UMMF::UML::MetaModel::OCL::Expressions::LoopExp.
    if ( defined $self->{'loopExp'} ) {
    my $x = $self->{'loopExp'};
    $self->{'loopExp'} = undef;
    $self->set_loopExp($x);
  }
  
  # AssociationEnd 
  #  qualifiers 0..*
  #  <--> 
  #  navigationCallExp 0..1 UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp.
    if ( defined $self->{'navigationCallExp'} ) {
    my $x = $self->{'navigationCallExp'};
    $self->{'navigationCallExp'} = undef;
    $self->set_navigationCallExp($x);
  }
  
  # AssociationEnd 
  #  arguments 0..*
  #  <--> 
  #  parentOperation 0..1 UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp.
    if ( defined $self->{'parentOperation'} ) {
    my $x = $self->{'parentOperation'};
    $self->{'parentOperation'} = undef;
    $self->set_parentOperation($x);
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

  $self->UMMF::UML::MetaModel::OCL::Expressions::OclExpression::___initialize;
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
  $self->UMMF::UML::MetaModel::OCL::Expressions::OclExpression::___create(@args);
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
# AssociationEnd initExpression <---> initializedVariable
# type = UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration
# multiplicity = 0..1
# ordering = 

=head2 C<initializedVariable>

  my $val = $obj->initializedVariable;

Returns the AssociationEnd C<initializedVariable> value of type L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>.

=cut
sub initializedVariable ($)
{
  my ($self) = @_;
		  
  $self->{'initializedVariable'};
}


=head2 C<set_initializedVariable>

  $obj->set_initializedVariable($val);

Sets the AssociationEnd C<initializedVariable> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>.
Returns C<$obj>.

=cut
sub set_initializedVariable ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'initializedVariable'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclExpression.initializedVariable") }

    # Recursion lock
        $self->{'initializedVariable'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_initExpression($self) if $old;
    $val->add_initExpression($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_initializedVariable>

  $obj->add_initializedVariable($val);

Adds the AssociationEnd C<initializedVariable> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_initializedVariable ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'initializedVariable'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclExpression.initializedVariable");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::OclExpression::initializedVariable: too many")
    # if defined $self->{'initializedVariable'};

    # Recursion lock
        $self->{'initializedVariable'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_initExpression($self) if $old;
    $val->add_initExpression($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_initializedVariable>

  $obj->remove_initializedVariable($val);

Removes the AssociationEnd C<initializedVariable> value C<$val>.
Returns C<$obj>.

=cut
sub remove_initializedVariable ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'initializedVariable'}) eq $val ) { # Recursion lock
    $val = $self->{'initializedVariable'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_initExpression($self) if $old;
    $val->add_initExpression($self)    if $val;

  
  }
}


=head2 C<clear_initializedVariable>

  $obj->clear_initializedVariable;

Clears the AssociationEnd C<initializedVariable> links to L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration>.
Returns C<$obj>.

=cut
sub clear_initializedVariable ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'initializedVariable'}) ) { # Recursion lock
    my $val = $self->{'initializedVariable'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_initExpression($self) if $old;
    $val->add_initExpression($self)    if $val;

    }

  $self;
}


=head2 C<count_initializedVariable>

  $obj->count_initializedVariable;

Returns the number of elements of type L<UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration|UMMF::UML::MetaModel::OCL::Expressions::VariableDeclaration> associated with C<initializedVariable>.

=cut
sub count_initializedVariable ($)
{
  my ($self) = @_;

  my $x = $self->{'initializedVariable'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd body <---> loopExp
# type = UMMF::UML::MetaModel::OCL::Expressions::LoopExp
# multiplicity = 0..1
# ordering = 

=head2 C<loopExp>

  my $val = $obj->loopExp;

Returns the AssociationEnd C<loopExp> value of type L<UMMF::UML::MetaModel::OCL::Expressions::LoopExp|UMMF::UML::MetaModel::OCL::Expressions::LoopExp>.

=cut
sub loopExp ($)
{
  my ($self) = @_;
		  
  $self->{'loopExp'};
}


=head2 C<set_loopExp>

  $obj->set_loopExp($val);

Sets the AssociationEnd C<loopExp> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::LoopExp|UMMF::UML::MetaModel::OCL::Expressions::LoopExp>.
Returns C<$obj>.

=cut
sub set_loopExp ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'loopExp'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::OCL::Expressions::LoopExp')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclExpression.loopExp") }

    # Recursion lock
        $self->{'loopExp'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_body($self) if $old;
    $val->add_body($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_loopExp>

  $obj->add_loopExp($val);

Adds the AssociationEnd C<loopExp> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::LoopExp|UMMF::UML::MetaModel::OCL::Expressions::LoopExp>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_loopExp ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'loopExp'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::LoopExp')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclExpression.loopExp");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::OclExpression::loopExp: too many")
    # if defined $self->{'loopExp'};

    # Recursion lock
        $self->{'loopExp'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_body($self) if $old;
    $val->add_body($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_loopExp>

  $obj->remove_loopExp($val);

Removes the AssociationEnd C<loopExp> value C<$val>.
Returns C<$obj>.

=cut
sub remove_loopExp ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'loopExp'}) eq $val ) { # Recursion lock
    $val = $self->{'loopExp'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_body($self) if $old;
    $val->add_body($self)    if $val;

  
  }
}


=head2 C<clear_loopExp>

  $obj->clear_loopExp;

Clears the AssociationEnd C<loopExp> links to L<UMMF::UML::MetaModel::OCL::Expressions::LoopExp|UMMF::UML::MetaModel::OCL::Expressions::LoopExp>.
Returns C<$obj>.

=cut
sub clear_loopExp ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'loopExp'}) ) { # Recursion lock
    my $val = $self->{'loopExp'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_body($self) if $old;
    $val->add_body($self)    if $val;

    }

  $self;
}


=head2 C<count_loopExp>

  $obj->count_loopExp;

Returns the number of elements of type L<UMMF::UML::MetaModel::OCL::Expressions::LoopExp|UMMF::UML::MetaModel::OCL::Expressions::LoopExp> associated with C<loopExp>.

=cut
sub count_loopExp ($)
{
  my ($self) = @_;

  my $x = $self->{'loopExp'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd qualifiers <---> navigationCallExp
# type = UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp
# multiplicity = 0..1
# ordering = 

=head2 C<navigationCallExp>

  my $val = $obj->navigationCallExp;

Returns the AssociationEnd C<navigationCallExp> value of type L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp>.

=cut
sub navigationCallExp ($)
{
  my ($self) = @_;
		  
  $self->{'navigationCallExp'};
}


=head2 C<set_navigationCallExp>

  $obj->set_navigationCallExp($val);

Sets the AssociationEnd C<navigationCallExp> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp>.
Returns C<$obj>.

=cut
sub set_navigationCallExp ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'navigationCallExp'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclExpression.navigationCallExp") }

    # Recursion lock
        $self->{'navigationCallExp'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_qualifiers($self) if $old;
    $val->add_qualifiers($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_navigationCallExp>

  $obj->add_navigationCallExp($val);

Adds the AssociationEnd C<navigationCallExp> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_navigationCallExp ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'navigationCallExp'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclExpression.navigationCallExp");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::OclExpression::navigationCallExp: too many")
    # if defined $self->{'navigationCallExp'};

    # Recursion lock
        $self->{'navigationCallExp'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_qualifiers($self) if $old;
    $val->add_qualifiers($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_navigationCallExp>

  $obj->remove_navigationCallExp($val);

Removes the AssociationEnd C<navigationCallExp> value C<$val>.
Returns C<$obj>.

=cut
sub remove_navigationCallExp ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'navigationCallExp'}) eq $val ) { # Recursion lock
    $val = $self->{'navigationCallExp'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_qualifiers($self) if $old;
    $val->add_qualifiers($self)    if $val;

  
  }
}


=head2 C<clear_navigationCallExp>

  $obj->clear_navigationCallExp;

Clears the AssociationEnd C<navigationCallExp> links to L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp>.
Returns C<$obj>.

=cut
sub clear_navigationCallExp ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'navigationCallExp'}) ) { # Recursion lock
    my $val = $self->{'navigationCallExp'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_qualifiers($self) if $old;
    $val->add_qualifiers($self)    if $val;

    }

  $self;
}


=head2 C<count_navigationCallExp>

  $obj->count_navigationCallExp;

Returns the number of elements of type L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp> associated with C<navigationCallExp>.

=cut
sub count_navigationCallExp ($)
{
  my ($self) = @_;

  my $x = $self->{'navigationCallExp'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd arguments <---> parentOperation
# type = UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp
# multiplicity = 0..1
# ordering = 

=head2 C<parentOperation>

  my $val = $obj->parentOperation;

Returns the AssociationEnd C<parentOperation> value of type L<UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp|UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp>.

=cut
sub parentOperation ($)
{
  my ($self) = @_;
		  
  $self->{'parentOperation'};
}


=head2 C<set_parentOperation>

  $obj->set_parentOperation($val);

Sets the AssociationEnd C<parentOperation> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp|UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp>.
Returns C<$obj>.

=cut
sub set_parentOperation ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'parentOperation'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclExpression.parentOperation") }

    # Recursion lock
        $self->{'parentOperation'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_arguments($self) if $old;
    $val->add_arguments($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_parentOperation>

  $obj->add_parentOperation($val);

Adds the AssociationEnd C<parentOperation> value.
C<$val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp|UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_parentOperation ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'parentOperation'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::OclExpression.parentOperation");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::OclExpression::parentOperation: too many")
    # if defined $self->{'parentOperation'};

    # Recursion lock
        $self->{'parentOperation'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_arguments($self) if $old;
    $val->add_arguments($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_parentOperation>

  $obj->remove_parentOperation($val);

Removes the AssociationEnd C<parentOperation> value C<$val>.
Returns C<$obj>.

=cut
sub remove_parentOperation ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'parentOperation'}) eq $val ) { # Recursion lock
    $val = $self->{'parentOperation'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_arguments($self) if $old;
    $val->add_arguments($self)    if $val;

  
  }
}


=head2 C<clear_parentOperation>

  $obj->clear_parentOperation;

Clears the AssociationEnd C<parentOperation> links to L<UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp|UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp>.
Returns C<$obj>.

=cut
sub clear_parentOperation ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'parentOperation'}) ) { # Recursion lock
    my $val = $self->{'parentOperation'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_arguments($self) if $old;
    $val->add_arguments($self)    if $val;

    }

  $self;
}


=head2 C<count_parentOperation>

  $obj->count_parentOperation;

Returns the number of elements of type L<UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp|UMMF::UML::MetaModel::OCL::Expressions::OperationCallExp> associated with C<parentOperation>.

=cut
sub count_parentOperation ($)
{
  my ($self) = @_;

  my $x = $self->{'parentOperation'};

  defined $x ? 1 : 0;
}







# End of Class OclExpression


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

