# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState;

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

UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<0..1> : C<container_compositeState> E<lt>---E<gt>  C<subvertex> : UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex>

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
  UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State



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

  UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaCompositeState>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState>.
Other receivers will return false.

=cut
sub isaCompositeState { 1 }


=head2 C<isaBehavioral_Elements__State_Machines__CompositeState>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState>.
Other receivers will return false.
This is the fully qualified version of the C<isaCompositeState> method.

=cut
sub isaBehavioral_Elements__State_Machines__CompositeState { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::State_Machines::CompositeState'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::State_Machines::CompositeState' }



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
     'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState' =>
     {
       'table' => 'Behavioral_Elements__State_Machines__CompositeState',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'subvertex'
       => {
	 'type_impl' => 'iset',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex',

                           'table' => 'Behavioral_Elements__State_Machines__CompositeState__subvertex', 

                                                               'coll' => 'container_compositeState',

                                             'aggreg' => '1', 

                                           }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State',  ],
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
  #  container_compositeState 0..1
  #  <--> 
  #  subvertex 0..* UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex.
    if ( defined $self->{'subvertex'} ) {
    my $x = $self->{'subvertex'};
        $self->{'subvertex'} = Set::Object->new();
        $self->set_subvertex(@$x);
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
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex');
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State');
  }

  $self->UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State::___initialize;

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
  $self->UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::State::___create();

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
# AssociationEnd container_compositeState <---> subvertex
# type = UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex
# multiplicity = 0..*
# ordering = 

=head2 C<subvertex>

  my @val = $obj->subvertex;
  my $ary_val = $obj->subvertex;

Returns the AssociationEnd C<subvertex> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub subvertex ($)
{
  my ($self) = @_;

    my $x = $self->{'subvertex'};

  # confess("Container for subvertex $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_subvertex>

  $obj->set_subvertex(@val);

Sets the AssociationEnd C<subvertex> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex>.
Returns C<$obj>.

=cut
sub set_subvertex ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_subvertex;
  $self->add_subvertex(@val);
}


=head2 C<add_subvertex>

  $obj->add_subvertex(@val);

Adds AssociationEnd C<subvertex> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex>.
Returns C<$obj>.

=cut
sub add_subvertex ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'subvertex'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState.subvertex");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_container_compositeState($self) if $old;
    $val->add_container_compositeState($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_subvertex>

  $obj->remove_subvertex(@val);

Removes the AssociationEnd C<subvertex> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex>.
Returns C<$obj>.

=cut
sub remove_subvertex ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'subvertex'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::CompositeState.subvertex");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_container_compositeState($self) if $old;
    $val->add_container_compositeState($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_subvertex>

  $obj->clear_subvertex;

Clears the AssociationEnd C<subvertex> links to L<UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex|UMMF::UML::MetaModel::Behavioral_Elements::State_Machines::StateVertex>.
Returns C<$obj>.

=cut
sub clear_subvertex ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'subvertex'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'subvertex'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_container_compositeState($self) if $old;
    $val->add_container_compositeState($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_subvertex>

  $obj->count_subvertex;

Returns the number of elements associated with C<subvertex>.

=cut
sub count_subvertex ($)
{
  my ($self) = @_;

  my $x = $self->{'subvertex'};

    defined $x ? $x->size : 0;
  }







# End of Class CompositeState


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

