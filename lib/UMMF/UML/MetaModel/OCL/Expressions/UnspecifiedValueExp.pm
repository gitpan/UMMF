# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp;

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

UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp -- 

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


=head2 C<1> : C<> ----E<gt>  C<type> : UMMF::UML::MetaModel::Foundation::Core::Classifier C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<0..1> : C<unspecified> E<lt>----  C<> : UMMF::UML::MetaModel::OCL::Expressions::OclMessageArg C<1>



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

  UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp|UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaUnspecifiedValueExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp|UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp>.
Other receivers will return false.

=cut
sub isaUnspecifiedValueExp { 1 }


=head2 C<isaOCL__Expressions__UnspecifiedValueExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp|UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp>.
Other receivers will return false.
This is the fully qualified version of the C<isaUnspecifiedValueExp> method.

=cut
sub isaOCL__Expressions__UnspecifiedValueExp { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'OCL::Expressions::UnspecifiedValueExp'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'OCL::Expressions::UnspecifiedValueExp' }



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
     'UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp' =>
     {
       'table' => 'OCL__Expressions__UnspecifiedValueExp',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'type'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Classifier',

                                             'col' => 'type', 

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
  #   1
  #  <--> 
  #  type 1 UMMF::UML::MetaModel::Foundation::Core::Classifier.
    if ( defined $self->{'type'} ) {
    my $x = $self->{'type'};
    $self->{'type'} = undef;
    $self->set_type($x);
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

  $self->UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp::___initialize;
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
  $self->UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp::___create(@args);
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
# AssociationEnd  <---> type
# type = UMMF::UML::MetaModel::Foundation::Core::Classifier
# multiplicity = 1
# ordering = 

=head2 C<type>

  my $val = $obj->type;

Returns the AssociationEnd C<type> value of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.

=cut
sub type ($)
{
  my ($self) = @_;
		  
  $self->{'type'};
}


=head2 C<set_type>

  $obj->set_type($val);

Sets the AssociationEnd C<type> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Returns C<$obj>.

=cut
sub set_type ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'type'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Foundation::Core::Classifier')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp.type") }

    # Recursion lock
        $self->{'type'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_type>

  $obj->add_type($val);

Adds the AssociationEnd C<type> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_type ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'type'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Classifier')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp.type");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::UnspecifiedValueExp::type: too many")
    # if defined $self->{'type'};

    # Recursion lock
        $self->{'type'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_type>

  $obj->remove_type($val);

Removes the AssociationEnd C<type> value C<$val>.
Returns C<$obj>.

=cut
sub remove_type ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'type'}) eq $val ) { # Recursion lock
    $val = $self->{'type'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_type>

  $obj->clear_type;

Clears the AssociationEnd C<type> links to L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Returns C<$obj>.

=cut
sub clear_type ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'type'}) ) { # Recursion lock
    my $val = $self->{'type'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_type>

  $obj->count_type;

Returns the number of elements of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier> associated with C<type>.

=cut
sub count_type ($)
{
  my ($self) = @_;

  my $x = $self->{'type'};

  defined $x ? 1 : 0;
}







# End of Class UnspecifiedValueExp


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
