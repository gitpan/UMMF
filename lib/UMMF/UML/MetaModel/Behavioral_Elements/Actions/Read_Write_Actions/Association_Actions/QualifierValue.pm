# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue;

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

UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Foundation::Core::Element|UMMF::UML::MetaModel::Foundation::Core::Element>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<0..*> : C<qualifier> E<lt>----  C<> : UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::LinkEndData C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::LinkEndData|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::LinkEndData>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<0>

=item aggregation = C<composite>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<> ----E<gt>  C<qualifier> : UMMF::UML::MetaModel::Foundation::Core::Attribute C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

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
  UMMF::UML::MetaModel::Foundation::Core::Element



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

  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaQualifierValue>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue>.
Other receivers will return false.

=cut
sub isaQualifierValue { 1 }


=head2 C<isaBehavioral_Elements__Actions__Read_Write_Actions__Association_Actions__QualifierValue>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue>.
Other receivers will return false.
This is the fully qualified version of the C<isaQualifierValue> method.

=cut
sub isaBehavioral_Elements__Actions__Read_Write_Actions__Association_Actions__QualifierValue { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue' }



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
     'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue' =>
     {
       'table' => 'Behavioral_Elements__Actions__Read_Write_Actions__Association_Actions__QualifierValue',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	                     	 	       'qualifier'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Attribute',

                                             'col' => 'qualifier', 

                                                                                                                   }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::Foundation::Core::Element',  ],
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
  #  qualifier 1 UMMF::UML::MetaModel::Foundation::Core::Attribute.
    if ( defined $self->{'qualifier'} ) {
    my $x = $self->{'qualifier'};
    $self->{'qualifier'} = undef;
    $self->set_qualifier($x);
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
  }

  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;

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
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();

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
# AssociationEnd  <---> qualifier
# type = UMMF::UML::MetaModel::Foundation::Core::Attribute
# multiplicity = 1
# ordering = 

=head2 C<qualifier>

  my $val = $obj->qualifier;

Returns the AssociationEnd C<qualifier> value of type L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>.

=cut
sub qualifier ($)
{
  my ($self) = @_;
		  
  $self->{'qualifier'};
}


=head2 C<set_qualifier>

  $obj->set_qualifier($val);

Sets the AssociationEnd C<qualifier> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>.
Returns C<$obj>.

=cut
sub set_qualifier ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'qualifier'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Foundation::Core::Attribute')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue.qualifier") }

    # Recursion lock
        $self->{'qualifier'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_qualifier>

  $obj->add_qualifier($val);

Adds the AssociationEnd C<qualifier> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_qualifier ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'qualifier'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Attribute')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue.qualifier");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::Actions::Read_Write_Actions::Association_Actions::QualifierValue::qualifier: too many")
    # if defined $self->{'qualifier'};

    # Recursion lock
        $self->{'qualifier'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_qualifier>

  $obj->remove_qualifier($val);

Removes the AssociationEnd C<qualifier> value C<$val>.
Returns C<$obj>.

=cut
sub remove_qualifier ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'qualifier'}) eq $val ) { # Recursion lock
    $val = $self->{'qualifier'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_qualifier>

  $obj->clear_qualifier;

Clears the AssociationEnd C<qualifier> links to L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>.
Returns C<$obj>.

=cut
sub clear_qualifier ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'qualifier'}) ) { # Recursion lock
    my $val = $self->{'qualifier'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_qualifier>

  $obj->count_qualifier;

Returns the number of elements of type L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute> associated with C<qualifier>.

=cut
sub count_qualifier ($)
{
  my ($self) = @_;

  my $x = $self->{'qualifier'};

  defined $x ? 1 : 0;
}







# End of Class QualifierValue


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

