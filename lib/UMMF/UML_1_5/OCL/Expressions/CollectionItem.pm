# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: Perl.txt,v 1.77 2006/05/14 01:40:03 kstephens Exp $

package UMMF::UML_1_5::OCL::Expressions::CollectionItem;

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

UMMF::UML_1_5::OCL::Expressions::CollectionItem -- 

=head1 VERSION

1.5

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML_1_5::OCL::Expressions::CollectionLiteralPart|UMMF::UML_1_5::OCL::Expressions::CollectionLiteralPart>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<> : I<THIS> C<0..1> ----E<gt>  C<item> : UMMF::UML_1_5::OCL::Expressions::OclExpression C<1>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::OCL::Expressions::OclExpression|UMMF::UML_1_5::OCL::Expressions::OclExpression>

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
  UMMF::UML_1_5::OCL::Expressions::CollectionLiteralPart



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

  UMMF::UML_1_5::OCL::Expressions::CollectionItem->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML_1_5::OCL::Expressions::CollectionItem|UMMF::UML_1_5::OCL::Expressions::CollectionItem>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML_1_5::OCL::Expressions::CollectionItem')  ;
}


=head2 C<__typecheck>

  UMMF::UML_1_5::OCL::Expressions::CollectionItem->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML_1_5::OCL::Expressions::CollectionItem->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML_1_5::OCL::Expressions::CollectionItem' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaCollectionItem>


Returns true if receiver is a L<UMMF::UML_1_5::OCL::Expressions::CollectionItem|UMMF::UML_1_5::OCL::Expressions::CollectionItem>.
Other receivers will return false.

=cut
sub isaCollectionItem { 1 }


=head2 C<isaOCL__Expressions__CollectionItem>


Returns true if receiver is a L<UMMF::UML_1_5::OCL::Expressions::CollectionItem|UMMF::UML_1_5::OCL::Expressions::CollectionItem>.
Other receivers will return false.
This is the fully qualified version of the C<isaCollectionItem> method.

=cut
sub isaOCL__Expressions__CollectionItem { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'OCL::Expressions::CollectionItem'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'OCL::Expressions::CollectionItem' }



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
     'UMMF::UML_1_5::OCL::Expressions::CollectionItem' =>
     {
       'table' => 'OCL__Expressions__CollectionItem',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'item'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::OCL::Expressions::OclExpression',

                                             'col' => 'item', 

                                                                                                                   }
      ,
                         },
       'bases' => [  'UMMF::UML_1_5::OCL::Expressions::CollectionLiteralPart',  ],
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
  #  item 1 UMMF::UML_1_5::OCL::Expressions::OclExpression.
    if ( defined $self->{'item'} ) {
    my $x = $self->{'item'};
    $self->{'item'} = undef;
    $self->set_item($x);
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
    $self->__use('UMMF::UML_1_5::OCL::Expressions::CollectionLiteralPart');
  }

  $self->UMMF::UML_1_5::OCL::Expressions::CollectionItem::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::Element::___initialize;
  $self->UMMF::UML_1_5::OCL::Expressions::CollectionLiteralPart::___initialize;

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
  $self->UMMF::UML_1_5::OCL::Expressions::CollectionItem::___create(@args);
  $self->UMMF::UML_1_5::Foundation::Core::Element::___create();
  $self->UMMF::UML_1_5::OCL::Expressions::CollectionLiteralPart::___create();

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
# AssociationEnd  <---> item
# type = UMMF::UML_1_5::OCL::Expressions::OclExpression
# multiplicity = 1
# ordering = 

=head2 C<item>

  my $val = $obj->item;

Returns the AssociationEnd C<item> value of type L<UMMF::UML_1_5::OCL::Expressions::OclExpression|UMMF::UML_1_5::OCL::Expressions::OclExpression>.

=cut
sub item ($)
{
  my ($self) = @_;
		  
  $self->{'item'};
}


=head2 C<set_item>

  $obj->set_item($val);

Sets the AssociationEnd C<item> value.
C<$val> must of type L<UMMF::UML_1_5::OCL::Expressions::OclExpression|UMMF::UML_1_5::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub set_item ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'item'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML_1_5::OCL::Expressions::OclExpression')->__typecheck($val, "UMMF::UML_1_5::OCL::Expressions::CollectionItem.item") }

    # Recursion lock
        $self->{'item'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_item>

  $obj->add_item($val);

Adds the AssociationEnd C<item> value.
C<$val> must of type L<UMMF::UML_1_5::OCL::Expressions::OclExpression|UMMF::UML_1_5::OCL::Expressions::OclExpression>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_item ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'item'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML_1_5::OCL::Expressions::OclExpression')->__typecheck($val, "UMMF::UML_1_5::OCL::Expressions::CollectionItem.item");
      
    # confess("UMMF::UML_1_5::OCL::Expressions::CollectionItem::item: too many")
    # if defined $self->{'item'};

    # Recursion lock
        $self->{'item'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_item>

  $obj->remove_item($val);

Removes the AssociationEnd C<item> value C<$val>.
Returns C<$obj>.

=cut
sub remove_item ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'item'}) eq $val ) { # Recursion lock
    $val = $self->{'item'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_item>

  $obj->clear_item;

Clears the AssociationEnd C<item> links to L<UMMF::UML_1_5::OCL::Expressions::OclExpression|UMMF::UML_1_5::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub clear_item ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'item'}) ) { # Recursion lock
    my $val = $self->{'item'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_item>

  $obj->count_item;

Returns the number of elements of type L<UMMF::UML_1_5::OCL::Expressions::OclExpression|UMMF::UML_1_5::OCL::Expressions::OclExpression> associated with C<item>.

=cut
sub count_item ($)
{
  my ($self) = @_;

  my $x = $self->{'item'};

  defined $x ? 1 : 0;
}







# End of Class CollectionItem


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
