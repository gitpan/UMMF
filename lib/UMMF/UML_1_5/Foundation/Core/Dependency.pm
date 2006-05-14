# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: Perl.txt,v 1.77 2006/05/14 01:40:03 kstephens Exp $

package UMMF::UML_1_5::Foundation::Core::Dependency;

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

UMMF::UML_1_5::Foundation::Core::Dependency -- 

=head1 VERSION

1.5

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML_1_5::Foundation::Core::Relationship|UMMF::UML_1_5::Foundation::Core::Relationship>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<clientDependency> : I<THIS> C<0..*> E<lt>---E<gt>  C<client> : UMMF::UML_1_5::Foundation::Core::ModelElement C<1..*>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>

=item multiplicity = C<1..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<supplierDependency> : I<THIS> C<0..*> E<lt>---E<gt>  C<supplier> : UMMF::UML_1_5::Foundation::Core::ModelElement C<1..*>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>

=item multiplicity = C<1..*>

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
  UMMF::UML_1_5::Foundation::Core::Relationship



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

  UMMF::UML_1_5::Foundation::Core::Dependency->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML_1_5::Foundation::Core::Dependency|UMMF::UML_1_5::Foundation::Core::Dependency>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML_1_5::Foundation::Core::Dependency')  ;
}


=head2 C<__typecheck>

  UMMF::UML_1_5::Foundation::Core::Dependency->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML_1_5::Foundation::Core::Dependency->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML_1_5::Foundation::Core::Dependency' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaDependency>


Returns true if receiver is a L<UMMF::UML_1_5::Foundation::Core::Dependency|UMMF::UML_1_5::Foundation::Core::Dependency>.
Other receivers will return false.

=cut
sub isaDependency { 1 }


=head2 C<isaFoundation__Core__Dependency>


Returns true if receiver is a L<UMMF::UML_1_5::Foundation::Core::Dependency|UMMF::UML_1_5::Foundation::Core::Dependency>.
Other receivers will return false.
This is the fully qualified version of the C<isaDependency> method.

=cut
sub isaFoundation__Core__Dependency { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Foundation::Core::Dependency'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Foundation::Core::Dependency' }



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
     'UMMF::UML_1_5::Foundation::Core::Dependency' =>
     {
       'table' => 'Foundation__Core__Dependency',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'client'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML_1_5::Foundation::Core::ModelElement',

                           'table' => 'Foundation__Core__ClientDependency_Client', 

                                                      'item' => 'client', 

                  'coll' => 'clientDependency',

                                                                               }
      ,
                  	 	       'supplier'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML_1_5::Foundation::Core::ModelElement',

                           'table' => 'Foundation__Core__SupplierDependency_Supplier', 

                                                      'item' => 'supplier', 

                  'coll' => 'supplierDependency',

                                                                               }
      ,
                         },
       'bases' => [  'UMMF::UML_1_5::Foundation::Core::Relationship',  ],
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
  #  clientDependency 0..*
  #  <--> 
  #  client 1..* UMMF::UML_1_5::Foundation::Core::ModelElement.
    if ( defined $self->{'client'} ) {
    my $x = $self->{'client'};
        $self->{'client'} = Set::Object->new();
        $self->set_client(@$x);
  }
  
  # AssociationEnd 
  #  supplierDependency 0..*
  #  <--> 
  #  supplier 1..* UMMF::UML_1_5::Foundation::Core::ModelElement.
    if ( defined $self->{'supplier'} ) {
    my $x = $self->{'supplier'};
        $self->{'supplier'} = Set::Object->new();
        $self->set_supplier(@$x);
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
    $self->__use('UMMF::UML_1_5::Foundation::Core::Relationship');
  }

  $self->UMMF::UML_1_5::Foundation::Core::Dependency::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::Element::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::Relationship::___initialize;

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
  $self->UMMF::UML_1_5::Foundation::Core::Dependency::___create(@args);
  $self->UMMF::UML_1_5::Foundation::Core::Element::___create();
  $self->UMMF::UML_1_5::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML_1_5::Foundation::Core::Relationship::___create();

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
# AssociationEnd clientDependency <---> client
# type = UMMF::UML_1_5::Foundation::Core::ModelElement
# multiplicity = 1..*
# ordering = 

=head2 C<client>

  my @val = $obj->client;
  my $ary_val = $obj->client;

Returns the AssociationEnd C<client> values of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub client ($)
{
  my ($self) = @_;

    my $x = $self->{'client'};

  # confess("Container for client $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_client>

  $obj->set_client(@val);

Sets the AssociationEnd C<client> value.
Elements of C<@val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_client ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_client;
  $self->add_client(@val);
}


=head2 C<add_client>

  $obj->add_client(@val);

Adds AssociationEnd C<client> values.
Elements of C<@val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub add_client ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'client'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::Dependency.client");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_clientDependency($self) if $old;
    $val->add_clientDependency($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_client>

  $obj->remove_client(@val);

Removes the AssociationEnd C<client> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub remove_client ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'client'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::Dependency.client");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_clientDependency($self) if $old;
    $val->add_clientDependency($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_client>

  $obj->clear_client;

Clears the AssociationEnd C<client> links to L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_client ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'client'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'client'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_clientDependency($self) if $old;
    $val->add_clientDependency($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_client>

  $obj->count_client;

Returns the number of elements associated with C<client>.

=cut
sub count_client ($)
{
  my ($self) = @_;

  my $x = $self->{'client'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd supplierDependency <---> supplier
# type = UMMF::UML_1_5::Foundation::Core::ModelElement
# multiplicity = 1..*
# ordering = 

=head2 C<supplier>

  my @val = $obj->supplier;
  my $ary_val = $obj->supplier;

Returns the AssociationEnd C<supplier> values of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub supplier ($)
{
  my ($self) = @_;

    my $x = $self->{'supplier'};

  # confess("Container for supplier $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_supplier>

  $obj->set_supplier(@val);

Sets the AssociationEnd C<supplier> value.
Elements of C<@val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_supplier ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_supplier;
  $self->add_supplier(@val);
}


=head2 C<add_supplier>

  $obj->add_supplier(@val);

Adds AssociationEnd C<supplier> values.
Elements of C<@val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub add_supplier ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'supplier'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::Dependency.supplier");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_supplierDependency($self) if $old;
    $val->add_supplierDependency($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_supplier>

  $obj->remove_supplier(@val);

Removes the AssociationEnd C<supplier> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub remove_supplier ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'supplier'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::Dependency.supplier");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_supplierDependency($self) if $old;
    $val->add_supplierDependency($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_supplier>

  $obj->clear_supplier;

Clears the AssociationEnd C<supplier> links to L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_supplier ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'supplier'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'supplier'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_supplierDependency($self) if $old;
    $val->add_supplierDependency($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_supplier>

  $obj->count_supplier;

Returns the number of elements associated with C<supplier>.

=cut
sub count_supplier ($)
{
  my ($self) = @_;

  my $x = $self->{'supplier'};

    defined $x ? $x->size : 0;
  }







# End of Class Dependency


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
