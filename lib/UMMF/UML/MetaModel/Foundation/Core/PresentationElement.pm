# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Foundation::Core::PresentationElement;

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

UMMF::UML::MetaModel::Foundation::Core::PresentationElement -- 

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


=head2 C<0..*> : C<presentation> E<lt>---E<gt>  C<subject> : UMMF::UML::MetaModel::Foundation::Core::ModelElement C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>

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

  UMMF::UML::MetaModel::Foundation::Core::PresentationElement->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Foundation::Core::PresentationElement|UMMF::UML::MetaModel::Foundation::Core::PresentationElement>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Foundation::Core::PresentationElement')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Foundation::Core::PresentationElement->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Foundation::Core::PresentationElement->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Foundation::Core::PresentationElement' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaPresentationElement>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Core::PresentationElement|UMMF::UML::MetaModel::Foundation::Core::PresentationElement>.
Other receivers will return false.

=cut
sub isaPresentationElement { 1 }


=head2 C<isaFoundation__Core__PresentationElement>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Core::PresentationElement|UMMF::UML::MetaModel::Foundation::Core::PresentationElement>.
Other receivers will return false.
This is the fully qualified version of the C<isaPresentationElement> method.

=cut
sub isaFoundation__Core__PresentationElement { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Foundation::Core::PresentationElement'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Foundation::Core::PresentationElement' }



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
     'UMMF::UML::MetaModel::Foundation::Core::PresentationElement' =>
     {
       'table' => 'Foundation__Core__PresentationElement',
       'abstract' => 1,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'subject'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::ModelElement',

                           'table' => 'Foundation__Core__Presentation_Subject', 

                                                      'item' => 'subject', 

                  'coll' => 'presentation',

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
  #  presentation 0..*
  #  <--> 
  #  subject 0..* UMMF::UML::MetaModel::Foundation::Core::ModelElement.
    if ( defined $self->{'subject'} ) {
    my $x = $self->{'subject'};
        $self->{'subject'} = Set::Object->new();
        $self->set_subject(@$x);
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

  $self->UMMF::UML::MetaModel::Foundation::Core::PresentationElement::___initialize;
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
  $self->UMMF::UML::MetaModel::Foundation::Core::PresentationElement::___create(@args);
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
# AssociationEnd presentation <---> subject
# type = UMMF::UML::MetaModel::Foundation::Core::ModelElement
# multiplicity = 0..*
# ordering = 

=head2 C<subject>

  my @val = $obj->subject;
  my $ary_val = $obj->subject;

Returns the AssociationEnd C<subject> values of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub subject ($)
{
  my ($self) = @_;

    my $x = $self->{'subject'};

  # confess("Container for subject $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_subject>

  $obj->set_subject(@val);

Sets the AssociationEnd C<subject> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_subject ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_subject;
  $self->add_subject(@val);
}


=head2 C<add_subject>

  $obj->add_subject(@val);

Adds AssociationEnd C<subject> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub add_subject ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'subject'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::PresentationElement.subject");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_presentation($self) if $old;
    $val->add_presentation($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_subject>

  $obj->remove_subject(@val);

Removes the AssociationEnd C<subject> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub remove_subject ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'subject'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::PresentationElement.subject");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_presentation($self) if $old;
    $val->add_presentation($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_subject>

  $obj->clear_subject;

Clears the AssociationEnd C<subject> links to L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_subject ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'subject'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'subject'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_presentation($self) if $old;
    $val->add_presentation($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_subject>

  $obj->count_subject;

Returns the number of elements associated with C<subject>.

=cut
sub count_subject ($)
{
  my ($self) = @_;

  my $x = $self->{'subject'};

    defined $x ? $x->size : 0;
  }







# End of Class PresentationElement


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

