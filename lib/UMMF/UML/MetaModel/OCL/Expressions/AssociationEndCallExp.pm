# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp;

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

UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<0..*> : C<> ----E<gt>  C<referredAssociationEnd> : UMMF::UML::MetaModel::Foundation::Core::AssociationEnd C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

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
  UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp



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

  UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp|UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaAssociationEndCallExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp|UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp>.
Other receivers will return false.

=cut
sub isaAssociationEndCallExp { 1 }


=head2 C<isaOCL__Expressions__AssociationEndCallExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp|UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp>.
Other receivers will return false.
This is the fully qualified version of the C<isaAssociationEndCallExp> method.

=cut
sub isaOCL__Expressions__AssociationEndCallExp { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'OCL::Expressions::AssociationEndCallExp'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'OCL::Expressions::AssociationEndCallExp' }



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
     'UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp' =>
     {
       'table' => 'OCL__Expressions__AssociationEndCallExp',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'referredAssociationEnd'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::AssociationEnd',

                                             'col' => 'referredAssociationEnd', 

                                                                                                                   }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp',  ],
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
  #  referredAssociationEnd 1 UMMF::UML::MetaModel::Foundation::Core::AssociationEnd.
    if ( defined $self->{'referredAssociationEnd'} ) {
    my $x = $self->{'referredAssociationEnd'};
    $self->{'referredAssociationEnd'} = undef;
    $self->set_referredAssociationEnd($x);
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
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::PropertyCallExp');
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp');
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp');
  }

  $self->UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::OCL::Expressions::OclExpression::___initialize;
  $self->UMMF::UML::MetaModel::OCL::Expressions::PropertyCallExp::___initialize;
  $self->UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp::___initialize;
  $self->UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp::___initialize;

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
  $self->UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::OCL::Expressions::OclExpression::___create();
  $self->UMMF::UML::MetaModel::OCL::Expressions::PropertyCallExp::___create();
  $self->UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp::___create();
  $self->UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp::___create();

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
# AssociationEnd  <---> referredAssociationEnd
# type = UMMF::UML::MetaModel::Foundation::Core::AssociationEnd
# multiplicity = 1
# ordering = 

=head2 C<referredAssociationEnd>

  my $val = $obj->referredAssociationEnd;

Returns the AssociationEnd C<referredAssociationEnd> value of type L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>.

=cut
sub referredAssociationEnd ($)
{
  my ($self) = @_;
		  
  $self->{'referredAssociationEnd'};
}


=head2 C<set_referredAssociationEnd>

  $obj->set_referredAssociationEnd($val);

Sets the AssociationEnd C<referredAssociationEnd> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>.
Returns C<$obj>.

=cut
sub set_referredAssociationEnd ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'referredAssociationEnd'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Foundation::Core::AssociationEnd')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp.referredAssociationEnd") }

    # Recursion lock
        $self->{'referredAssociationEnd'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_referredAssociationEnd>

  $obj->add_referredAssociationEnd($val);

Adds the AssociationEnd C<referredAssociationEnd> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_referredAssociationEnd ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'referredAssociationEnd'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::AssociationEnd')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp.referredAssociationEnd");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::AssociationEndCallExp::referredAssociationEnd: too many")
    # if defined $self->{'referredAssociationEnd'};

    # Recursion lock
        $self->{'referredAssociationEnd'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_referredAssociationEnd>

  $obj->remove_referredAssociationEnd($val);

Removes the AssociationEnd C<referredAssociationEnd> value C<$val>.
Returns C<$obj>.

=cut
sub remove_referredAssociationEnd ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'referredAssociationEnd'}) eq $val ) { # Recursion lock
    $val = $self->{'referredAssociationEnd'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_referredAssociationEnd>

  $obj->clear_referredAssociationEnd;

Clears the AssociationEnd C<referredAssociationEnd> links to L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>.
Returns C<$obj>.

=cut
sub clear_referredAssociationEnd ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'referredAssociationEnd'}) ) { # Recursion lock
    my $val = $self->{'referredAssociationEnd'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_referredAssociationEnd>

  $obj->count_referredAssociationEnd;

Returns the number of elements of type L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd> associated with C<referredAssociationEnd>.

=cut
sub count_referredAssociationEnd ($)
{
  my ($self) = @_;

  my $x = $self->{'referredAssociationEnd'};

  defined $x ? 1 : 0;
}







# End of Class AssociationEndCallExp


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

