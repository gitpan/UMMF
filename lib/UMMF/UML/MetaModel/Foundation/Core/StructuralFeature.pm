# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Foundation::Core::StructuralFeature;

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

UMMF::UML::MetaModel::Foundation::Core::StructuralFeature -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Foundation::Core::Feature|UMMF::UML::MetaModel::Foundation::Core::Feature>




=head1 ATTRIBUTES


=head2 C<multiplicity> : UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity 


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity|UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = I<UNSPECIFIED>

=item container_type = C<Set::Object>

=back


=head2 C<changeability> : UMMF::UML::MetaModel::Foundation::Data_Types::ChangeableKind 


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::ChangeableKind|UMMF::UML::MetaModel::Foundation::Data_Types::ChangeableKind>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = C<<"changeable">>

=item container_type = C<Set::Object>

=back


=head2 C<targetScope> : UMMF::UML::MetaModel::Foundation::Data_Types::ScopeKind 


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::ScopeKind|UMMF::UML::MetaModel::Foundation::Data_Types::ScopeKind>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = C<<"instance">>

=item container_type = C<Set::Object>

=back


=head2 C<ordering> : UMMF::UML::MetaModel::Foundation::Data_Types::OrderingKind 


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::OrderingKind|UMMF::UML::MetaModel::Foundation::Data_Types::OrderingKind>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = C<<"unordered">>

=item container_type = C<Set::Object>

=back



=head1 ASSOCIATIONS


=head2 C<0..*> : C<typedFeature> E<lt>---E<gt>  C<type> : UMMF::UML::MetaModel::Foundation::Core::Classifier C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>

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
  UMMF::UML::MetaModel::Foundation::Core::Feature



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

  UMMF::UML::MetaModel::Foundation::Core::StructuralFeature->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Foundation::Core::StructuralFeature|UMMF::UML::MetaModel::Foundation::Core::StructuralFeature>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Foundation::Core::StructuralFeature')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Foundation::Core::StructuralFeature->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Foundation::Core::StructuralFeature->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Foundation::Core::StructuralFeature' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaStructuralFeature>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Core::StructuralFeature|UMMF::UML::MetaModel::Foundation::Core::StructuralFeature>.
Other receivers will return false.

=cut
sub isaStructuralFeature { 1 }


=head2 C<isaFoundation__Core__StructuralFeature>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Core::StructuralFeature|UMMF::UML::MetaModel::Foundation::Core::StructuralFeature>.
Other receivers will return false.
This is the fully qualified version of the C<isaStructuralFeature> method.

=cut
sub isaFoundation__Core__StructuralFeature { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Foundation::Core::StructuralFeature'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Foundation::Core::StructuralFeature' }



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
     'UMMF::UML::MetaModel::Foundation::Core::StructuralFeature' =>
     {
       'table' => 'Foundation__Core__StructuralFeature',
       'abstract' => 1,
       'slots' => 
       { 
	 # Attributes
	 	       'multiplicity'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity',

                                             'col' => 'multiplicity', 

                                                                                                                   }
      ,
         	       'changeability'
       => {
	 'type_impl' => 'string',
                                             'col' => 'changeability', 

                                                                                                                   }
      ,
         	       'targetScope'
       => {
	 'type_impl' => 'string',
                                             'col' => 'targetScope', 

                                                                                                                   }
      ,
         	       'ordering'
       => {
	 'type_impl' => 'string',
                                             'col' => 'ordering', 

                                                                                                                   }
      ,
         
	 # Associations
	 	 	       'type'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Classifier',

                                             'col' => 'type', 

                                                                                                                   }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::Foundation::Core::Feature',  ],
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

    # Attribute multiplicity
  if ( exists $self->{'multiplicity'} ) {
    my $x = $self->{'multiplicity'};
    $self->{'multiplicity'} = undef;
    $self->set_multiplicity($x);
  } else {
      }
  
    # Attribute changeability
  if ( exists $self->{'changeability'} ) {
    my $x = $self->{'changeability'};
    $self->{'changeability'} = undef;
    $self->set_changeability($x);
  } else {
        $self->{'changeability'} = "changeable";
      }
  
    # Attribute targetScope
  if ( exists $self->{'targetScope'} ) {
    my $x = $self->{'targetScope'};
    $self->{'targetScope'} = undef;
    $self->set_targetScope($x);
  } else {
        $self->{'targetScope'} = "instance";
      }
  
    # Attribute ordering
  if ( exists $self->{'ordering'} ) {
    my $x = $self->{'ordering'};
    $self->{'ordering'} = undef;
    $self->set_ordering($x);
  } else {
        $self->{'ordering'} = "unordered";
      }
  


  # Associations

  # AssociationEnd 
  #  typedFeature 0..*
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
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Feature');
  }

  $self->UMMF::UML::MetaModel::Foundation::Core::StructuralFeature::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Feature::___initialize;

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
  $self->UMMF::UML::MetaModel::Foundation::Core::StructuralFeature::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::Feature::___create();

  $self;
}




#################################################################
# Attributes
#



=for html <hr/>

=cut

#################################################################
# Attribute multiplicity
# type = UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = 

=head2 C<multiplicity>

  my $val = $obj->multiplicity;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity|UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity> value of Attribute C<multiplicity>.

=cut
sub multiplicity ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'multiplicity'};

  ;

  $val;
}


=head2 C<set_multiplicity>

  $obj->set_multiplicity($val);

Sets the value of Attribute C<multiplicity>.
C<$val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity|UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity> or C<undef>.
Returns C<$obj>.

=cut
sub set_multiplicity ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    $self->__use('UMMF::UML::MetaModel::Foundation::Data_Types::Multiplicity')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::StructuralFeature.multiplicity");
  }

    $self->{'multiplicity'} = $val
  ;

  ;

  $self;
}


=head2 C<count_multiplicity>

  $obj->count_multiplicity;

Returns the number of elements (0 or 1) in C<multiplicity>.

=cut
sub count_multiplicity ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'multiplicity'};

  ;

  defined $val ? 1 : 0;
}



=for html <hr/>

=cut

#################################################################
# Attribute changeability
# type = UMMF::UML::MetaModel::Foundation::Data_Types::ChangeableKind
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = "changeable"

=head2 C<changeability>

  my $val = $obj->changeability;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::ChangeableKind|UMMF::UML::MetaModel::Foundation::Data_Types::ChangeableKind> value of Attribute C<changeability>.

=cut
sub changeability ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'changeability'};

  ;

  $val;
}


=head2 C<set_changeability>

  $obj->set_changeability($val);

Sets the value of Attribute C<changeability>.
C<$val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::ChangeableKind|UMMF::UML::MetaModel::Foundation::Data_Types::ChangeableKind> or C<undef>.
Returns C<$obj>.

=cut
sub set_changeability ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    $self->__use('UMMF::UML::MetaModel::Foundation::Data_Types::ChangeableKind')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::StructuralFeature.changeability");
  }

    $self->{'changeability'} = $val
  ;

  ;

  $self;
}


=head2 C<count_changeability>

  $obj->count_changeability;

Returns the number of elements (0 or 1) in C<changeability>.

=cut
sub count_changeability ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'changeability'};

  ;

  defined $val ? 1 : 0;
}



=for html <hr/>

=cut

#################################################################
# Attribute targetScope
# type = UMMF::UML::MetaModel::Foundation::Data_Types::ScopeKind
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = "instance"

=head2 C<targetScope>

  my $val = $obj->targetScope;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::ScopeKind|UMMF::UML::MetaModel::Foundation::Data_Types::ScopeKind> value of Attribute C<targetScope>.

=cut
sub targetScope ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'targetScope'};

  ;

  $val;
}


=head2 C<set_targetScope>

  $obj->set_targetScope($val);

Sets the value of Attribute C<targetScope>.
C<$val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::ScopeKind|UMMF::UML::MetaModel::Foundation::Data_Types::ScopeKind> or C<undef>.
Returns C<$obj>.

=cut
sub set_targetScope ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    $self->__use('UMMF::UML::MetaModel::Foundation::Data_Types::ScopeKind')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::StructuralFeature.targetScope");
  }

    $self->{'targetScope'} = $val
  ;

  ;

  $self;
}


=head2 C<count_targetScope>

  $obj->count_targetScope;

Returns the number of elements (0 or 1) in C<targetScope>.

=cut
sub count_targetScope ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'targetScope'};

  ;

  defined $val ? 1 : 0;
}



=for html <hr/>

=cut

#################################################################
# Attribute ordering
# type = UMMF::UML::MetaModel::Foundation::Data_Types::OrderingKind
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = "unordered"

=head2 C<ordering>

  my $val = $obj->ordering;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::OrderingKind|UMMF::UML::MetaModel::Foundation::Data_Types::OrderingKind> value of Attribute C<ordering>.

=cut
sub ordering ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'ordering'};

  ;

  $val;
}


=head2 C<set_ordering>

  $obj->set_ordering($val);

Sets the value of Attribute C<ordering>.
C<$val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::OrderingKind|UMMF::UML::MetaModel::Foundation::Data_Types::OrderingKind> or C<undef>.
Returns C<$obj>.

=cut
sub set_ordering ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    $self->__use('UMMF::UML::MetaModel::Foundation::Data_Types::OrderingKind')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::StructuralFeature.ordering");
  }

    $self->{'ordering'} = $val
  ;

  ;

  $self;
}


=head2 C<count_ordering>

  $obj->count_ordering;

Returns the number of elements (0 or 1) in C<ordering>.

=cut
sub count_ordering ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'ordering'};

  ;

  defined $val ? 1 : 0;
}




#################################################################
# Association
#


=for html <hr/>

=cut

#################################################################
# AssociationEnd typedFeature <---> type
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

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Foundation::Core::Classifier')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::StructuralFeature.type") }

    # Recursion lock
        $self->{'type'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_typedFeature($self) if $old;
    $val->add_typedFeature($self)    if $val;

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
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Classifier')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::StructuralFeature.type");
      
    # confess("UMMF::UML::MetaModel::Foundation::Core::StructuralFeature::type: too many")
    # if defined $self->{'type'};

    # Recursion lock
        $self->{'type'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_typedFeature($self) if $old;
    $val->add_typedFeature($self)    if $val;

  
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
        
    $old->remove_typedFeature($self) if $old;
    $val->add_typedFeature($self)    if $val;

  
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
        
    $old->remove_typedFeature($self) if $old;
    $val->add_typedFeature($self)    if $val;

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







# End of Class StructuralFeature


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

