# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link;

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

UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link -- 

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


=head2 C<0..*> : C<link> E<lt>---E<gt>  C<association> : UMMF::UML::MetaModel::Foundation::Core::Association C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Association|UMMF::UML::MetaModel::Foundation::Core::Association>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<particpatingLink> E<lt>---E<gt>  C<collaborationInstanceSet_particpatingLink> : UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<1> : C<link> E<lt>---E<gt>  C<connection> : UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd C<2..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd>

=item multiplicity = C<2..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<ordered>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<ARRAY>

=back


=head2 C<0..*> : C<ownedLink> E<lt>---E<gt>  C<owner> : UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<composite>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..1> : C<communicationsLink> E<lt>---E<gt>  C<stimulus_communicationsLink> : UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

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

  UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaLink>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link>.
Other receivers will return false.

=cut
sub isaLink { 1 }


=head2 C<isaBehavioral_Elements__Common_Behavior__Link>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link>.
Other receivers will return false.
This is the fully qualified version of the C<isaLink> method.

=cut
sub isaBehavioral_Elements__Common_Behavior__Link { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::Common_Behavior::Link'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::Common_Behavior::Link' }



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
     'UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link' =>
     {
       'table' => 'Behavioral_Elements__Common_Behavior__Link',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'association'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Association',

                                             'col' => 'association', 

                                                                                                                   }
      ,
                  	 	       'collaborationInstanceSet_particpatingLink'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet',

                           'table' => 'Behavioral_Elements__CollaborationInstanceSet_ParticpatingLink', 

                                                      'item' => 'collaborationInstanceSet_particpatingLink', 

                  'coll' => 'particpatingLink',

                                                                               }
      ,
                  	 	       'connection'
       => {
	 'type_impl' => 'iarray',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd',

                           'table' => 'Behavioral_Elements__Common_Behavior__Link__connection', 

                                                               'coll' => 'link',

                  'slot' => 'link_i', 

                                    'aggreg' => '1', 

                                           }
      ,
                  	 	       'owner'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance',

                  'null' => '1', 

                                    'col' => 'owner', 

                                                                                                                   }
      ,
                  	 	       'stimulus_communicationsLink'
       => {
	 'type_impl' => 'iset',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus',

                           'table' => 'Behavioral_Elements__Common_Behavior__Link__stimulus_communicationsLink', 

                                                               'coll' => 'communicationsLink',

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
  #  link 0..*
  #  <--> 
  #  association 1 UMMF::UML::MetaModel::Foundation::Core::Association.
    if ( defined $self->{'association'} ) {
    my $x = $self->{'association'};
    $self->{'association'} = undef;
    $self->set_association($x);
  }
  
  # AssociationEnd 
  #  particpatingLink 0..*
  #  <--> 
  #  collaborationInstanceSet_particpatingLink 0..* UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet.
    if ( defined $self->{'collaborationInstanceSet_particpatingLink'} ) {
    my $x = $self->{'collaborationInstanceSet_particpatingLink'};
        $self->{'collaborationInstanceSet_particpatingLink'} = Set::Object->new();
        $self->set_collaborationInstanceSet_particpatingLink(@$x);
  }
  
  # AssociationEnd 
  #  link 1
  #  <--> 
  #  connection 2..* UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd.
    if ( defined $self->{'connection'} ) {
    my $x = $self->{'connection'};
        $self->{'connection'} = [ ];
        $self->set_connection(@$x);
  }
  
  # AssociationEnd 
  #  ownedLink 0..*
  #  <--> 
  #  owner 0..1 UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance.
    if ( defined $self->{'owner'} ) {
    my $x = $self->{'owner'};
    $self->{'owner'} = undef;
    $self->set_owner($x);
  }
  
  # AssociationEnd 
  #  communicationsLink 0..1
  #  <--> 
  #  stimulus_communicationsLink 0..* UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus.
    if ( defined $self->{'stimulus_communicationsLink'} ) {
    my $x = $self->{'stimulus_communicationsLink'};
        $self->{'stimulus_communicationsLink'} = Set::Object->new();
        $self->set_stimulus_communicationsLink(@$x);
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

  $self->UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link::___initialize;
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
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link::___create(@args);
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
# AssociationEnd link <---> association
# type = UMMF::UML::MetaModel::Foundation::Core::Association
# multiplicity = 1
# ordering = 

=head2 C<association>

  my $val = $obj->association;

Returns the AssociationEnd C<association> value of type L<UMMF::UML::MetaModel::Foundation::Core::Association|UMMF::UML::MetaModel::Foundation::Core::Association>.

=cut
sub association ($)
{
  my ($self) = @_;
		  
  $self->{'association'};
}


=head2 C<set_association>

  $obj->set_association($val);

Sets the AssociationEnd C<association> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Association|UMMF::UML::MetaModel::Foundation::Core::Association>.
Returns C<$obj>.

=cut
sub set_association ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'association'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Foundation::Core::Association')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.association") }

    # Recursion lock
        $self->{'association'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_link($self) if $old;
    $val->add_link($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_association>

  $obj->add_association($val);

Adds the AssociationEnd C<association> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Association|UMMF::UML::MetaModel::Foundation::Core::Association>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_association ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'association'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Association')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.association");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link::association: too many")
    # if defined $self->{'association'};

    # Recursion lock
        $self->{'association'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_link($self) if $old;
    $val->add_link($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_association>

  $obj->remove_association($val);

Removes the AssociationEnd C<association> value C<$val>.
Returns C<$obj>.

=cut
sub remove_association ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'association'}) eq $val ) { # Recursion lock
    $val = $self->{'association'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_link($self) if $old;
    $val->add_link($self)    if $val;

  
  }
}


=head2 C<clear_association>

  $obj->clear_association;

Clears the AssociationEnd C<association> links to L<UMMF::UML::MetaModel::Foundation::Core::Association|UMMF::UML::MetaModel::Foundation::Core::Association>.
Returns C<$obj>.

=cut
sub clear_association ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'association'}) ) { # Recursion lock
    my $val = $self->{'association'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_link($self) if $old;
    $val->add_link($self)    if $val;

    }

  $self;
}


=head2 C<count_association>

  $obj->count_association;

Returns the number of elements of type L<UMMF::UML::MetaModel::Foundation::Core::Association|UMMF::UML::MetaModel::Foundation::Core::Association> associated with C<association>.

=cut
sub count_association ($)
{
  my ($self) = @_;

  my $x = $self->{'association'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd particpatingLink <---> collaborationInstanceSet_particpatingLink
# type = UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet
# multiplicity = 0..*
# ordering = 

=head2 C<collaborationInstanceSet_particpatingLink>

  my @val = $obj->collaborationInstanceSet_particpatingLink;
  my $ary_val = $obj->collaborationInstanceSet_particpatingLink;

Returns the AssociationEnd C<collaborationInstanceSet_particpatingLink> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub collaborationInstanceSet_particpatingLink ($)
{
  my ($self) = @_;

    my $x = $self->{'collaborationInstanceSet_particpatingLink'};

  # confess("Container for collaborationInstanceSet_particpatingLink $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_collaborationInstanceSet_particpatingLink>

  $obj->set_collaborationInstanceSet_particpatingLink(@val);

Sets the AssociationEnd C<collaborationInstanceSet_particpatingLink> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet>.
Returns C<$obj>.

=cut
sub set_collaborationInstanceSet_particpatingLink ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_collaborationInstanceSet_particpatingLink;
  $self->add_collaborationInstanceSet_particpatingLink(@val);
}


=head2 C<add_collaborationInstanceSet_particpatingLink>

  $obj->add_collaborationInstanceSet_particpatingLink(@val);

Adds AssociationEnd C<collaborationInstanceSet_particpatingLink> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet>.
Returns C<$obj>.

=cut
sub add_collaborationInstanceSet_particpatingLink ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'collaborationInstanceSet_particpatingLink'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.collaborationInstanceSet_particpatingLink");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_particpatingLink($self) if $old;
    $val->add_particpatingLink($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_collaborationInstanceSet_particpatingLink>

  $obj->remove_collaborationInstanceSet_particpatingLink(@val);

Removes the AssociationEnd C<collaborationInstanceSet_particpatingLink> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet>.
Returns C<$obj>.

=cut
sub remove_collaborationInstanceSet_particpatingLink ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'collaborationInstanceSet_particpatingLink'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.collaborationInstanceSet_particpatingLink");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_particpatingLink($self) if $old;
    $val->add_particpatingLink($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_collaborationInstanceSet_particpatingLink>

  $obj->clear_collaborationInstanceSet_particpatingLink;

Clears the AssociationEnd C<collaborationInstanceSet_particpatingLink> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet|UMMF::UML::MetaModel::Behavioral_Elements::Collaborations::CollaborationInstanceSet>.
Returns C<$obj>.

=cut
sub clear_collaborationInstanceSet_particpatingLink ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'collaborationInstanceSet_particpatingLink'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'collaborationInstanceSet_particpatingLink'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_particpatingLink($self) if $old;
    $val->add_particpatingLink($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_collaborationInstanceSet_particpatingLink>

  $obj->count_collaborationInstanceSet_particpatingLink;

Returns the number of elements associated with C<collaborationInstanceSet_particpatingLink>.

=cut
sub count_collaborationInstanceSet_particpatingLink ($)
{
  my ($self) = @_;

  my $x = $self->{'collaborationInstanceSet_particpatingLink'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd link <---> connection
# type = UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd
# multiplicity = 2..*
# ordering = ordered

=head2 C<connection>

  my @val = $obj->connection;
  my $ary_val = $obj->connection;

Returns the AssociationEnd C<connection> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub connection ($)
{
  my ($self) = @_;

    my $x = $self->{'connection'} ||= [ ];

  wantarray ? @{$x} : $x;
  
}


=head2 C<index_connection>

  my $x = $obj->index_connection($i);
  my @x = $obj->index_connection($i, $count);

In scalar context, returns the value of AssociationEnd C<connection> at index C<$i>.
In array context, returns the values between index C<$i> and C<$i + $count - 1>, inclusive.

=cut
sub index_connection ($$@)
{
  my ($self, $i, $count) = @_;

  ;

  my $val = $self->{'connection'} ||= [ ];

  ;

  wantarray ? $val->[$i .. (defined $count ? $i + $count - 1 : $i)]
            : $val->[$i];
}


=head2 C<index_of_connection>

  my $index = $obj->index_of_connection($val);

Returns the index of C<$val> in AssociationEnd C<connection>.
Return C<undef> if C<$val> is not in C<connection>.

=cut
sub index_of_connection ($$)
{
  my ($self, $x) = @_;

  ;

  my $val = $self->{'connection'} ||= [ ];

  ;

  __ummf_array_index($val, $x);
}


=head2 C<set_connection>

  $obj->set_connection(@val);

Sets the AssociationEnd C<connection> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd>.
Returns C<$obj>.

=cut
sub set_connection ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_connection;
  $self->add_connection(@val);
}


=head2 C<set_index_connection>

  $obj->set_index_connection($i, $val);

Sets the value of AssociationEnd C<connection> at index C<$i>.
Returns self.

=cut
sub set_index_connection ($$$)
{
  my ($self, $i, $val) = @_;

  ;

  my $x = $self->{'connection'} ||= [ ];

  no warnings;
  my $old;
  if ( ($old = $x->[$i]) ne $val) {
    # Recursion lock
        $x->[$i] = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_link($self) if $old;
    $val->add_link($self)    if $val;

  
    ;
  }

  $self;
}


=head2 C<add_connection>

  $obj->add_connection(@val);

Adds AssociationEnd C<connection> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd>.
Returns C<$obj>.

=cut
sub add_connection ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'connection'} ||= [ ];
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if grep($_ eq $val, @$x);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.connection");

    # Recursion lock
        push(@{$x}, $val);
        
    # Remove and add associations with other ends.
        
    $old->remove_link($self) if $old;
    $val->add_link($self)    if $val;

    }
  
  $self;
}


=head2 C<add_index_connection>

  $obj->add_index_connection($i, @val);

Adds AssociationEnd C<connection> values at index C<$i>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd>.
Returns C<$obj>.

=cut
sub add_index_connection ($$@)
{
  my ($self, $i, @val) = @_;

  
    my $x = $self->{'connection'} ||= [ ];
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if grep($_ eq $val, @$x);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.connection");

    # Recursion lock
        splice(@{$x}, $i, 0, $val); # Recursion lock
        ++ $i;
    
    # Remove and add associations with other ends.
        
    $old->remove_link($self) if $old;
    $val->add_link($self)    if $val;

    }
  
  
  $self;
}


=head2 C<remove_connection>

  $obj->remove_connection(@val);

Removes the AssociationEnd C<connection> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd>.
Returns C<$obj>.

=cut
sub remove_connection ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'connection'} ||= [ ];
  
  for my $old ( @val ) {
    # Recursion lock
        my $i; # index of $old in @$x.
    next unless defined($i = __ummf_array_index($x, $old));
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.connection");

    # Recursion lock
        splice(@$x, $i, 1);     
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_link($self) if $old;
    $val->add_link($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_connection>

  $obj->clear_connection;

Clears the AssociationEnd C<connection> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::LinkEnd>.
Returns C<$obj>.

=cut
sub clear_connection ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'connection'} ||= [ ];
  
  my $val; # Place holder for other MACRO.
  
    $self->{'connection'} = [ ];  # Recursion lock
  for my $old ( @$x ) { # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_link($self) if $old;
    $val->add_link($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_connection>

  $obj->count_connection;

Returns the number of elements associated with C<connection>.

=cut
sub count_connection ($)
{
  my ($self) = @_;

  my $x = $self->{'connection'};

    defined $x ? scalar @$x : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd ownedLink <---> owner
# type = UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance
# multiplicity = 0..1
# ordering = 

=head2 C<owner>

  my $val = $obj->owner;

Returns the AssociationEnd C<owner> value of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>.

=cut
sub owner ($)
{
  my ($self) = @_;
		  
  $self->{'owner'};
}


=head2 C<set_owner>

  $obj->set_owner($val);

Sets the AssociationEnd C<owner> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>.
Returns C<$obj>.

=cut
sub set_owner ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'owner'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.owner") }

    # Recursion lock
        $self->{'owner'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_ownedLink($self) if $old;
    $val->add_ownedLink($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_owner>

  $obj->add_owner($val);

Adds the AssociationEnd C<owner> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_owner ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'owner'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.owner");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link::owner: too many")
    # if defined $self->{'owner'};

    # Recursion lock
        $self->{'owner'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_ownedLink($self) if $old;
    $val->add_ownedLink($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_owner>

  $obj->remove_owner($val);

Removes the AssociationEnd C<owner> value C<$val>.
Returns C<$obj>.

=cut
sub remove_owner ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'owner'}) eq $val ) { # Recursion lock
    $val = $self->{'owner'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_ownedLink($self) if $old;
    $val->add_ownedLink($self)    if $val;

  
  }
}


=head2 C<clear_owner>

  $obj->clear_owner;

Clears the AssociationEnd C<owner> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance>.
Returns C<$obj>.

=cut
sub clear_owner ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'owner'}) ) { # Recursion lock
    my $val = $self->{'owner'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_ownedLink($self) if $old;
    $val->add_ownedLink($self)    if $val;

    }

  $self;
}


=head2 C<count_owner>

  $obj->count_owner;

Returns the number of elements of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Instance> associated with C<owner>.

=cut
sub count_owner ($)
{
  my ($self) = @_;

  my $x = $self->{'owner'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd communicationsLink <---> stimulus_communicationsLink
# type = UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus
# multiplicity = 0..*
# ordering = 

=head2 C<stimulus_communicationsLink>

  my @val = $obj->stimulus_communicationsLink;
  my $ary_val = $obj->stimulus_communicationsLink;

Returns the AssociationEnd C<stimulus_communicationsLink> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub stimulus_communicationsLink ($)
{
  my ($self) = @_;

    my $x = $self->{'stimulus_communicationsLink'};

  # confess("Container for stimulus_communicationsLink $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_stimulus_communicationsLink>

  $obj->set_stimulus_communicationsLink(@val);

Sets the AssociationEnd C<stimulus_communicationsLink> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus>.
Returns C<$obj>.

=cut
sub set_stimulus_communicationsLink ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_stimulus_communicationsLink;
  $self->add_stimulus_communicationsLink(@val);
}


=head2 C<add_stimulus_communicationsLink>

  $obj->add_stimulus_communicationsLink(@val);

Adds AssociationEnd C<stimulus_communicationsLink> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus>.
Returns C<$obj>.

=cut
sub add_stimulus_communicationsLink ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'stimulus_communicationsLink'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.stimulus_communicationsLink");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_communicationsLink($self) if $old;
    $val->add_communicationsLink($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_stimulus_communicationsLink>

  $obj->remove_stimulus_communicationsLink(@val);

Removes the AssociationEnd C<stimulus_communicationsLink> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus>.
Returns C<$obj>.

=cut
sub remove_stimulus_communicationsLink ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'stimulus_communicationsLink'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Link.stimulus_communicationsLink");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_communicationsLink($self) if $old;
    $val->add_communicationsLink($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_stimulus_communicationsLink>

  $obj->clear_stimulus_communicationsLink;

Clears the AssociationEnd C<stimulus_communicationsLink> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus|UMMF::UML::MetaModel::Behavioral_Elements::Common_Behavior::Stimulus>.
Returns C<$obj>.

=cut
sub clear_stimulus_communicationsLink ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'stimulus_communicationsLink'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'stimulus_communicationsLink'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_communicationsLink($self) if $old;
    $val->add_communicationsLink($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_stimulus_communicationsLink>

  $obj->count_stimulus_communicationsLink;

Returns the number of elements associated with C<stimulus_communicationsLink>.

=cut
sub count_stimulus_communicationsLink ($)
{
  my ($self) = @_;

  my $x = $self->{'stimulus_communicationsLink'};

    defined $x ? $x->size : 0;
  }







# End of Class Link


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

