# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Model_Management::Package;

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

UMMF::UML::MetaModel::Model_Management::Package -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement|UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement>

L<UMMF::UML::MetaModel::Foundation::Core::Namespace|UMMF::UML::MetaModel::Foundation::Core::Namespace>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<0..*> : C<package> E<lt>---E<gt>  C<importedElement> : UMMF::UML::MetaModel::Foundation::Core::ModelElement C<0..*>



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


=head2 C<0..*> : C<package> E<lt>---E<gt>  C<importedElement_AC> : UMMF::UML::MetaModel::Model_Management::ElementImport C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Model_Management::ElementImport|UMMF::UML::MetaModel::Model_Management::ElementImport>

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
  UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement  UMMF::UML::MetaModel::Foundation::Core::Namespace



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

  UMMF::UML::MetaModel::Model_Management::Package->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Model_Management::Package|UMMF::UML::MetaModel::Model_Management::Package>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Model_Management::Package')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Model_Management::Package->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Model_Management::Package->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Model_Management::Package' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaPackage>


Returns true if receiver is a L<UMMF::UML::MetaModel::Model_Management::Package|UMMF::UML::MetaModel::Model_Management::Package>.
Other receivers will return false.

=cut
sub isaPackage { 1 }


=head2 C<isaModel_Management__Package>


Returns true if receiver is a L<UMMF::UML::MetaModel::Model_Management::Package|UMMF::UML::MetaModel::Model_Management::Package>.
Other receivers will return false.
This is the fully qualified version of the C<isaPackage> method.

=cut
sub isaModel_Management__Package { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Model_Management::Package'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Model_Management::Package' }



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
     'UMMF::UML::MetaModel::Model_Management::Package' =>
     {
       'table' => 'Model_Management__Package',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'importedElement'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::ModelElement',

                           'table' => 'Model_Management__ElementImport', 

                                                      'item' => 'importedElement', 

                  'coll' => 'package',

                                                                               }
      ,
                  	 	       'importedElement_AC'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Model_Management::ElementImport',

                           'table' => 'Model_Management__ElementImport_package_ElementImport_AC', 

                                                      'item' => 'importedElement_AC', 

                  'coll' => 'package',

                                                                               }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement',  'UMMF::UML::MetaModel::Foundation::Core::Namespace',  ],
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
  #  package 0..*
  #  <--> 
  #  importedElement 0..* UMMF::UML::MetaModel::Foundation::Core::ModelElement.
    if ( defined $self->{'importedElement'} ) {
    my $x = $self->{'importedElement'};
        $self->{'importedElement'} = Set::Object->new();
        $self->set_importedElement(@$x);
  }
  
  # AssociationEnd 
  #  package 0..*
  #  <--> 
  #  importedElement_AC 0..* UMMF::UML::MetaModel::Model_Management::ElementImport.
    if ( defined $self->{'importedElement_AC'} ) {
    my $x = $self->{'importedElement_AC'};
        $self->{'importedElement_AC'} = Set::Object->new();
        $self->set_importedElement_AC(@$x);
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
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement');
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Element');
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement');
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Namespace');
  }

  $self->UMMF::UML::MetaModel::Model_Management::Package::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Namespace::___initialize;

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
  $self->UMMF::UML::MetaModel::Model_Management::Package::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::GeneralizableElement::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::Namespace::___create();

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
# AssociationEnd package <---> importedElement
# type = UMMF::UML::MetaModel::Foundation::Core::ModelElement
# multiplicity = 0..*
# ordering = 

=head2 C<importedElement>

  my @val = $obj->importedElement;
  my $ary_val = $obj->importedElement;

Returns the AssociationEnd C<importedElement> values of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub importedElement ($)
{
  my ($self) = @_;

    my $x = $self->{'importedElement'};

  # confess("Container for importedElement $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_importedElement>

  $obj->set_importedElement(@val);

Sets the AssociationEnd C<importedElement> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_importedElement ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_importedElement;
  $self->add_importedElement(@val);
}


=head2 C<add_importedElement>

  $obj->add_importedElement(@val);

Adds AssociationEnd C<importedElement> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub add_importedElement ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'importedElement'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Model_Management::Package.importedElement");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_package($self) if $old;
    $val->add_package($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_importedElement>

  $obj->remove_importedElement(@val);

Removes the AssociationEnd C<importedElement> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub remove_importedElement ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'importedElement'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Model_Management::Package.importedElement");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_package($self) if $old;
    $val->add_package($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_importedElement>

  $obj->clear_importedElement;

Clears the AssociationEnd C<importedElement> links to L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_importedElement ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'importedElement'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'importedElement'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_package($self) if $old;
    $val->add_package($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_importedElement>

  $obj->count_importedElement;

Returns the number of elements associated with C<importedElement>.

=cut
sub count_importedElement ($)
{
  my ($self) = @_;

  my $x = $self->{'importedElement'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd package <---> importedElement_AC
# type = UMMF::UML::MetaModel::Model_Management::ElementImport
# multiplicity = 0..*
# ordering = 

=head2 C<importedElement_AC>

  my @val = $obj->importedElement_AC;
  my $ary_val = $obj->importedElement_AC;

Returns the AssociationEnd C<importedElement_AC> values of type L<UMMF::UML::MetaModel::Model_Management::ElementImport|UMMF::UML::MetaModel::Model_Management::ElementImport>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub importedElement_AC ($)
{
  my ($self) = @_;

    my $x = $self->{'importedElement_AC'};

  # confess("Container for importedElement_AC $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_importedElement_AC>

  $obj->set_importedElement_AC(@val);

Sets the AssociationEnd C<importedElement_AC> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Model_Management::ElementImport|UMMF::UML::MetaModel::Model_Management::ElementImport>.
Returns C<$obj>.

=cut
sub set_importedElement_AC ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_importedElement_AC;
  $self->add_importedElement_AC(@val);
}


=head2 C<add_importedElement_AC>

  $obj->add_importedElement_AC(@val);

Adds AssociationEnd C<importedElement_AC> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Model_Management::ElementImport|UMMF::UML::MetaModel::Model_Management::ElementImport>.
Returns C<$obj>.

=cut
sub add_importedElement_AC ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'importedElement_AC'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Model_Management::ElementImport')->__typecheck($val, "UMMF::UML::MetaModel::Model_Management::Package.importedElement_AC");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_package($self) if $old;
    $val->add_package($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_importedElement_AC>

  $obj->remove_importedElement_AC(@val);

Removes the AssociationEnd C<importedElement_AC> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Model_Management::ElementImport|UMMF::UML::MetaModel::Model_Management::ElementImport>.
Returns C<$obj>.

=cut
sub remove_importedElement_AC ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'importedElement_AC'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Model_Management::ElementImport')->__typecheck($val, "UMMF::UML::MetaModel::Model_Management::Package.importedElement_AC");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_package($self) if $old;
    $val->add_package($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_importedElement_AC>

  $obj->clear_importedElement_AC;

Clears the AssociationEnd C<importedElement_AC> links to L<UMMF::UML::MetaModel::Model_Management::ElementImport|UMMF::UML::MetaModel::Model_Management::ElementImport>.
Returns C<$obj>.

=cut
sub clear_importedElement_AC ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'importedElement_AC'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'importedElement_AC'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_package($self) if $old;
    $val->add_package($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_importedElement_AC>

  $obj->count_importedElement_AC;

Returns the number of elements associated with C<importedElement_AC>.

=cut
sub count_importedElement_AC ($)
{
  my ($self) = @_;

  my $x = $self->{'importedElement_AC'};

    defined $x ? $x->size : 0;
  }







# End of Class Package


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

