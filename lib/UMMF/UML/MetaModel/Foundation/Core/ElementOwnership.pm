# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Foundation::Core::ElementOwnership;

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

UMMF::UML::MetaModel::Foundation::Core::ElementOwnership -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::AssociationClass|UMMF::UML::MetaModel::Foundation::Core::AssociationClass>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::__ObjectBase|UMMF::UML::MetaModel::__ObjectBase>




=head1 ATTRIBUTES


=head2 C<visibility> : UMMF::UML::MetaModel::Foundation::Data_Types::VisibilityKind 


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::VisibilityKind|UMMF::UML::MetaModel::Foundation::Data_Types::VisibilityKind>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = C<<"public">>

=item container_type = C<Set::Object>

=back


=head2 C<isSpecification> : UMMF::UML::MetaModel::Foundation::Data_Types::Boolean 


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::Boolean|UMMF::UML::MetaModel::Foundation::Data_Types::Boolean>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = C<<"false">>

=item container_type = C<Set::Object>

=back



=head1 ASSOCIATIONS


=head2 C<0..*> : C<ownedElement_AC> E<lt>---E<gt>  C<namespace> : UMMF::UML::MetaModel::Foundation::Core::Namespace C<0..1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::Namespace|UMMF::UML::MetaModel::Foundation::Core::Namespace>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<composite>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..1> : C<namespace_AC> E<lt>---E<gt>  C<ownedElement> : UMMF::UML::MetaModel::Foundation::Core::ModelElement C<0..*>



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


  UMMF::UML::MetaModel::__ObjectBase

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

  UMMF::UML::MetaModel::Foundation::Core::ElementOwnership->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Foundation::Core::ElementOwnership|UMMF::UML::MetaModel::Foundation::Core::ElementOwnership>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Foundation::Core::ElementOwnership')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Foundation::Core::ElementOwnership->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Foundation::Core::ElementOwnership->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Foundation::Core::ElementOwnership' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaElementOwnership>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Core::ElementOwnership|UMMF::UML::MetaModel::Foundation::Core::ElementOwnership>.
Other receivers will return false.

=cut
sub isaElementOwnership { 1 }


=head2 C<isaFoundation__Core__ElementOwnership>


Returns true if receiver is a L<UMMF::UML::MetaModel::Foundation::Core::ElementOwnership|UMMF::UML::MetaModel::Foundation::Core::ElementOwnership>.
Other receivers will return false.
This is the fully qualified version of the C<isaElementOwnership> method.

=cut
sub isaFoundation__Core__ElementOwnership { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Foundation::Core::ElementOwnership'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Foundation::Core::ElementOwnership' }



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
     'UMMF::UML::MetaModel::Foundation::Core::ElementOwnership' =>
     {
       'table' => 'Foundation__Core__ElementOwnership',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 	       'visibility'
       => {
	 'type_impl' => 'string',
                                             'col' => 'visibility', 

                                                                                                                   }
      ,
         	       'isSpecification'
       => {
	 'type_impl' => 'string',
                                             'col' => 'isSpecification', 

                                                                                                                   }
      ,
         
	 # Associations
	 	 	       'namespace'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Namespace',

                  'null' => '1', 

                                    'col' => 'namespace', 

                                                                                                                   }
      ,
                  	 	       'ownedElement'
       => {
	 'type_impl' => 'iset',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::ModelElement',

                           'table' => 'Foundation__Core__ElementOwnership__ownedElement', 

                                                               'coll' => 'namespace_AC',

                                             'aggreg' => '1', 

                                           }
      ,
                         },
       'bases' => [  ],
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

    # Attribute visibility
  if ( exists $self->{'visibility'} ) {
    my $x = $self->{'visibility'};
    $self->{'visibility'} = undef;
    $self->set_visibility($x);
  } else {
        $self->{'visibility'} = "public";
      }
  
    # Attribute isSpecification
  if ( exists $self->{'isSpecification'} ) {
    my $x = $self->{'isSpecification'};
    $self->{'isSpecification'} = undef;
    $self->set_isSpecification($x);
  } else {
        $self->{'isSpecification'} = "false";
      }
  


  # Associations

  # AssociationEnd 
  #  ownedElement_AC 0..*
  #  <--> 
  #  namespace 0..1 UMMF::UML::MetaModel::Foundation::Core::Namespace.
    if ( defined $self->{'namespace'} ) {
    my $x = $self->{'namespace'};
    $self->{'namespace'} = undef;
    $self->set_namespace($x);
  }
  
  # AssociationEnd 
  #  namespace_AC 0..1
  #  <--> 
  #  ownedElement 0..* UMMF::UML::MetaModel::Foundation::Core::ModelElement.
    if ( defined $self->{'ownedElement'} ) {
    my $x = $self->{'ownedElement'};
        $self->{'ownedElement'} = Set::Object->new();
        $self->set_ownedElement(@$x);
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
  }

  $self->UMMF::UML::MetaModel::Foundation::Core::ElementOwnership::___initialize;

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
  $self->UMMF::UML::MetaModel::Foundation::Core::ElementOwnership::___create(@args);

  $self;
}




#################################################################
# Attributes
#



=for html <hr/>

=cut

#################################################################
# Attribute visibility
# type = UMMF::UML::MetaModel::Foundation::Data_Types::VisibilityKind
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = "public"

=head2 C<visibility>

  my $val = $obj->visibility;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::VisibilityKind|UMMF::UML::MetaModel::Foundation::Data_Types::VisibilityKind> value of Attribute C<visibility>.

=cut
sub visibility ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'visibility'};

  ;

  $val;
}


=head2 C<set_visibility>

  $obj->set_visibility($val);

Sets the value of Attribute C<visibility>.
C<$val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::VisibilityKind|UMMF::UML::MetaModel::Foundation::Data_Types::VisibilityKind> or C<undef>.
Returns C<$obj>.

=cut
sub set_visibility ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    $self->__use('UMMF::UML::MetaModel::Foundation::Data_Types::VisibilityKind')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::ElementOwnership.visibility");
  }

    $self->{'visibility'} = $val
  ;

  ;

  $self;
}


=head2 C<count_visibility>

  $obj->count_visibility;

Returns the number of elements (0 or 1) in C<visibility>.

=cut
sub count_visibility ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'visibility'};

  ;

  defined $val ? 1 : 0;
}



=for html <hr/>

=cut

#################################################################
# Attribute isSpecification
# type = UMMF::UML::MetaModel::Foundation::Data_Types::Boolean
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = "false"

=head2 C<isSpecification>

  my $val = $obj->isSpecification;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::Boolean|UMMF::UML::MetaModel::Foundation::Data_Types::Boolean> value of Attribute C<isSpecification>.

=cut
sub isSpecification ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'isSpecification'};

  ;

  $val;
}


=head2 C<set_isSpecification>

  $obj->set_isSpecification($val);

Sets the value of Attribute C<isSpecification>.
C<$val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::Boolean|UMMF::UML::MetaModel::Foundation::Data_Types::Boolean> or C<undef>.
Returns C<$obj>.

=cut
sub set_isSpecification ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    ;
  }

    $self->{'isSpecification'} = $val
  ;

  ;

  $self;
}


=head2 C<count_isSpecification>

  $obj->count_isSpecification;

Returns the number of elements (0 or 1) in C<isSpecification>.

=cut
sub count_isSpecification ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'isSpecification'};

  ;

  defined $val ? 1 : 0;
}




#################################################################
# Association
#


=for html <hr/>

=cut

#################################################################
# AssociationEnd ownedElement_AC <---> namespace
# type = UMMF::UML::MetaModel::Foundation::Core::Namespace
# multiplicity = 0..1
# ordering = 

=head2 C<namespace>

  my $val = $obj->namespace;

Returns the AssociationEnd C<namespace> value of type L<UMMF::UML::MetaModel::Foundation::Core::Namespace|UMMF::UML::MetaModel::Foundation::Core::Namespace>.

=cut
sub namespace ($)
{
  my ($self) = @_;
		  
  $self->{'namespace'};
}


=head2 C<set_namespace>

  $obj->set_namespace($val);

Sets the AssociationEnd C<namespace> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Namespace|UMMF::UML::MetaModel::Foundation::Core::Namespace>.
Returns C<$obj>.

=cut
sub set_namespace ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'namespace'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Foundation::Core::Namespace')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::ElementOwnership.namespace") }

    # Recursion lock
        $self->{'namespace'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_ownedElement_AC($self) if $old;
    $val->add_ownedElement_AC($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_namespace>

  $obj->add_namespace($val);

Adds the AssociationEnd C<namespace> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Namespace|UMMF::UML::MetaModel::Foundation::Core::Namespace>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_namespace ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'namespace'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Namespace')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::ElementOwnership.namespace");
      
    # confess("UMMF::UML::MetaModel::Foundation::Core::ElementOwnership::namespace: too many")
    # if defined $self->{'namespace'};

    # Recursion lock
        $self->{'namespace'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_ownedElement_AC($self) if $old;
    $val->add_ownedElement_AC($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_namespace>

  $obj->remove_namespace($val);

Removes the AssociationEnd C<namespace> value C<$val>.
Returns C<$obj>.

=cut
sub remove_namespace ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'namespace'}) eq $val ) { # Recursion lock
    $val = $self->{'namespace'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_ownedElement_AC($self) if $old;
    $val->add_ownedElement_AC($self)    if $val;

  
  }
}


=head2 C<clear_namespace>

  $obj->clear_namespace;

Clears the AssociationEnd C<namespace> links to L<UMMF::UML::MetaModel::Foundation::Core::Namespace|UMMF::UML::MetaModel::Foundation::Core::Namespace>.
Returns C<$obj>.

=cut
sub clear_namespace ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'namespace'}) ) { # Recursion lock
    my $val = $self->{'namespace'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_ownedElement_AC($self) if $old;
    $val->add_ownedElement_AC($self)    if $val;

    }

  $self;
}


=head2 C<count_namespace>

  $obj->count_namespace;

Returns the number of elements of type L<UMMF::UML::MetaModel::Foundation::Core::Namespace|UMMF::UML::MetaModel::Foundation::Core::Namespace> associated with C<namespace>.

=cut
sub count_namespace ($)
{
  my ($self) = @_;

  my $x = $self->{'namespace'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd namespace_AC <---> ownedElement
# type = UMMF::UML::MetaModel::Foundation::Core::ModelElement
# multiplicity = 0..*
# ordering = 

=head2 C<ownedElement>

  my @val = $obj->ownedElement;
  my $ary_val = $obj->ownedElement;

Returns the AssociationEnd C<ownedElement> values of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub ownedElement ($)
{
  my ($self) = @_;

    my $x = $self->{'ownedElement'};

  # confess("Container for ownedElement $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_ownedElement>

  $obj->set_ownedElement(@val);

Sets the AssociationEnd C<ownedElement> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_ownedElement ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_ownedElement;
  $self->add_ownedElement(@val);
}


=head2 C<add_ownedElement>

  $obj->add_ownedElement(@val);

Adds AssociationEnd C<ownedElement> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub add_ownedElement ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'ownedElement'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::ElementOwnership.ownedElement");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_namespace_AC($self) if $old;
    $val->add_namespace_AC($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_ownedElement>

  $obj->remove_ownedElement(@val);

Removes the AssociationEnd C<ownedElement> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub remove_ownedElement ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'ownedElement'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML::MetaModel::Foundation::Core::ElementOwnership.ownedElement");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_namespace_AC($self) if $old;
    $val->add_namespace_AC($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_ownedElement>

  $obj->clear_ownedElement;

Clears the AssociationEnd C<ownedElement> links to L<UMMF::UML::MetaModel::Foundation::Core::ModelElement|UMMF::UML::MetaModel::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_ownedElement ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'ownedElement'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'ownedElement'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_namespace_AC($self) if $old;
    $val->add_namespace_AC($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_ownedElement>

  $obj->count_ownedElement;

Returns the number of elements associated with C<ownedElement>.

=cut
sub count_ownedElement ($)
{
  my ($self) = @_;

  my $x = $self->{'ownedElement'};

    defined $x ? $x->size : 0;
  }







# End of Class ElementOwnership


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
