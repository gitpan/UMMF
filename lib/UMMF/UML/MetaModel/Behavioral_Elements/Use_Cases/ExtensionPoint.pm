# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint;

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

UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint -- 

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


=head2 C<location> : UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference 


=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::Attribute|UMMF::UML::MetaModel::Foundation::Core::Attribute>

=item type = L<UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference|UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = I<UNSPECIFIED>

=item container_type = C<Set::Object>

=back



=head1 ASSOCIATIONS


=head2 C<1..*> : C<extensionPoint> E<lt>---E<gt>  C<extend> : UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend>

=item multiplicity = C<0..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<private>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<extensionPoint> E<lt>---E<gt>  C<useCase> : UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase>

=item multiplicity = C<1>

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

  UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaExtensionPoint>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint>.
Other receivers will return false.

=cut
sub isaExtensionPoint { 1 }


=head2 C<isaBehavioral_Elements__Use_Cases__ExtensionPoint>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint>.
Other receivers will return false.
This is the fully qualified version of the C<isaExtensionPoint> method.

=cut
sub isaBehavioral_Elements__Use_Cases__ExtensionPoint { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::Use_Cases::ExtensionPoint'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::Use_Cases::ExtensionPoint' }



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
     'UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint' =>
     {
       'table' => 'Behavioral_Elements__Use_Cases__ExtensionPoint',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 	       'location'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference',

                                             'col' => 'location', 

                                                                                                                   }
      ,
         
	 # Associations
	 	 	       'extend'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend',

                           'table' => 'Behavioral_Elements__Use_Cases__ExtensionPoint_Extend', 

                                                      'item' => 'extend', 

                  'coll' => 'extensionPoint',

                                                                               }
      ,
                  	 	       'useCase'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase',

                                             'col' => 'useCase', 

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

    # Attribute location
  if ( exists $self->{'location'} ) {
    my $x = $self->{'location'};
    $self->{'location'} = undef;
    $self->set_location($x);
  } else {
      }
  


  # Associations

  # AssociationEnd 
  #  extensionPoint 1..*
  #  <--> 
  #  extend 0..* UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend.
    if ( defined $self->{'extend'} ) {
    my $x = $self->{'extend'};
        $self->{'extend'} = Set::Object->new();
        $self->set_extend(@$x);
  }
  
  # AssociationEnd 
  #  extensionPoint 0..*
  #  <--> 
  #  useCase 1 UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase.
    if ( defined $self->{'useCase'} ) {
    my $x = $self->{'useCase'};
    $self->{'useCase'} = undef;
    $self->set_useCase($x);
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

  $self->UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint::___initialize;
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
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();

  $self;
}




#################################################################
# Attributes
#



=for html <hr/>

=cut

#################################################################
# Attribute location
# type = UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = 

=head2 C<location>

  my $val = $obj->location;

Returns the L<UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference|UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference> value of Attribute C<location>.

=cut
sub location ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'location'};

  ;

  $val;
}


=head2 C<set_location>

  $obj->set_location($val);

Sets the value of Attribute C<location>.
C<$val> must be of type L<UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference|UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference> or C<undef>.
Returns C<$obj>.

=cut
sub set_location ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    $self->__use('UMMF::UML::MetaModel::Foundation::Data_Types::LocationReference')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint.location");
  }

    $self->{'location'} = $val
  ;

  ;

  $self;
}


=head2 C<count_location>

  $obj->count_location;

Returns the number of elements (0 or 1) in C<location>.

=cut
sub count_location ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'location'};

  ;

  defined $val ? 1 : 0;
}




#################################################################
# Association
#


=for html <hr/>

=cut

#################################################################
# AssociationEnd extensionPoint <---> extend
# type = UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend
# multiplicity = 0..*
# ordering = 

=head2 C<extend>

  my @val = $obj->extend;
  my $ary_val = $obj->extend;

Returns the AssociationEnd C<extend> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub extend ($)
{
  my ($self) = @_;

    my $x = $self->{'extend'};

  # confess("Container for extend $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_extend>

  $obj->set_extend(@val);

Sets the AssociationEnd C<extend> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend>.
Returns C<$obj>.

=cut
sub set_extend ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_extend;
  $self->add_extend(@val);
}


=head2 C<add_extend>

  $obj->add_extend(@val);

Adds AssociationEnd C<extend> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend>.
Returns C<$obj>.

=cut
sub add_extend ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'extend'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint.extend");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
        
    $old->remove_extensionPoint($self) if $old;
    $val->add_extensionPoint($self)    if $val;

    }
  
  $self;
}


=head2 C<remove_extend>

  $obj->remove_extend(@val);

Removes the AssociationEnd C<extend> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend>.
Returns C<$obj>.

=cut
sub remove_extend ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'extend'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint.extend");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_extensionPoint($self) if $old;
    $val->add_extensionPoint($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_extend>

  $obj->clear_extend;

Clears the AssociationEnd C<extend> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::Extend>.
Returns C<$obj>.

=cut
sub clear_extend ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'extend'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'extend'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_extensionPoint($self) if $old;
    $val->add_extensionPoint($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_extend>

  $obj->count_extend;

Returns the number of elements associated with C<extend>.

=cut
sub count_extend ($)
{
  my ($self) = @_;

  my $x = $self->{'extend'};

    defined $x ? $x->size : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd extensionPoint <---> useCase
# type = UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase
# multiplicity = 1
# ordering = 

=head2 C<useCase>

  my $val = $obj->useCase;

Returns the AssociationEnd C<useCase> value of type L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase>.

=cut
sub useCase ($)
{
  my ($self) = @_;
		  
  $self->{'useCase'};
}


=head2 C<set_useCase>

  $obj->set_useCase($val);

Sets the AssociationEnd C<useCase> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase>.
Returns C<$obj>.

=cut
sub set_useCase ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'useCase'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint.useCase") }

    # Recursion lock
        $self->{'useCase'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_extensionPoint($self) if $old;
    $val->add_extensionPoint($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_useCase>

  $obj->add_useCase($val);

Adds the AssociationEnd C<useCase> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_useCase ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'useCase'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint.useCase");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::ExtensionPoint::useCase: too many")
    # if defined $self->{'useCase'};

    # Recursion lock
        $self->{'useCase'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_extensionPoint($self) if $old;
    $val->add_extensionPoint($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_useCase>

  $obj->remove_useCase($val);

Removes the AssociationEnd C<useCase> value C<$val>.
Returns C<$obj>.

=cut
sub remove_useCase ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'useCase'}) eq $val ) { # Recursion lock
    $val = $self->{'useCase'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_extensionPoint($self) if $old;
    $val->add_extensionPoint($self)    if $val;

  
  }
}


=head2 C<clear_useCase>

  $obj->clear_useCase;

Clears the AssociationEnd C<useCase> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase>.
Returns C<$obj>.

=cut
sub clear_useCase ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'useCase'}) ) { # Recursion lock
    my $val = $self->{'useCase'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_extensionPoint($self) if $old;
    $val->add_extensionPoint($self)    if $val;

    }

  $self;
}


=head2 C<count_useCase>

  $obj->count_useCase;

Returns the number of elements of type L<UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase|UMMF::UML::MetaModel::Behavioral_Elements::Use_Cases::UseCase> associated with C<useCase>.

=cut
sub count_useCase ($)
{
  my ($self) = @_;

  my $x = $self->{'useCase'};

  defined $x ? 1 : 0;
}







# End of Class ExtensionPoint


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

