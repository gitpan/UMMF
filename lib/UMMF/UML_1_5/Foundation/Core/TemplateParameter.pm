# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: Perl.txt,v 1.77 2006/05/14 01:40:03 kstephens Exp $

package UMMF::UML_1_5::Foundation::Core::TemplateParameter;

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

UMMF::UML_1_5::Foundation::Core::TemplateParameter -- 

=head1 VERSION

1.5

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML_1_5::Foundation::Core::AssociationClass|UMMF::UML_1_5::Foundation::Core::AssociationClass>

=head1 SUPERCLASSES

L<UMMF::UML_1_5::Foundation::Core::Element|UMMF::UML_1_5::Foundation::Core::Element>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<templateParameter_defaultElement> : I<THIS> C<0..*> E<lt>---E<gt>  C<defaultElement> : UMMF::UML_1_5::Foundation::Core::ModelElement C<0..1>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>

=item multiplicity = C<0..1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<templateParameter_AC> : I<THIS> C<0..*> E<lt>---E<gt>  C<template> : UMMF::UML_1_5::Foundation::Core::ModelElement C<1>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<composite>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<template_AC> : I<THIS> C<0..1> E<lt>---E<gt>  C<templateParameter> : UMMF::UML_1_5::Foundation::Core::ModelElement C<1>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<ordered>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<ARRAY>

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
  UMMF::UML_1_5::Foundation::Core::Element



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

  UMMF::UML_1_5::Foundation::Core::TemplateParameter->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML_1_5::Foundation::Core::TemplateParameter|UMMF::UML_1_5::Foundation::Core::TemplateParameter>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML_1_5::Foundation::Core::TemplateParameter')  ;
}


=head2 C<__typecheck>

  UMMF::UML_1_5::Foundation::Core::TemplateParameter->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML_1_5::Foundation::Core::TemplateParameter->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML_1_5::Foundation::Core::TemplateParameter' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaTemplateParameter>


Returns true if receiver is a L<UMMF::UML_1_5::Foundation::Core::TemplateParameter|UMMF::UML_1_5::Foundation::Core::TemplateParameter>.
Other receivers will return false.

=cut
sub isaTemplateParameter { 1 }


=head2 C<isaFoundation__Core__TemplateParameter>


Returns true if receiver is a L<UMMF::UML_1_5::Foundation::Core::TemplateParameter|UMMF::UML_1_5::Foundation::Core::TemplateParameter>.
Other receivers will return false.
This is the fully qualified version of the C<isaTemplateParameter> method.

=cut
sub isaFoundation__Core__TemplateParameter { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Foundation::Core::TemplateParameter'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Foundation::Core::TemplateParameter' }



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
     'UMMF::UML_1_5::Foundation::Core::TemplateParameter' =>
     {
       'table' => 'Foundation__Core__TemplateParameter',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'defaultElement'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::Foundation::Core::ModelElement',

                  'null' => '1', 

                                    'col' => 'defaultElement', 

                                                                                                                   }
      ,
                  	 	       'template'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::Foundation::Core::ModelElement',

                                             'col' => 'template', 

                                                                                                                   }
      ,
                  	 	       'templateParameter'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::Foundation::Core::ModelElement',

                                             'col' => 'templateParameter', 

                                                                                 'aggreg' => '1', 

                                           }
      ,
                         },
       'bases' => [  'UMMF::UML_1_5::Foundation::Core::Element',  ],
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
  #  templateParameter_defaultElement 0..*
  #  <--> 
  #  defaultElement 0..1 UMMF::UML_1_5::Foundation::Core::ModelElement.
    if ( defined $self->{'defaultElement'} ) {
    my $x = $self->{'defaultElement'};
    $self->{'defaultElement'} = undef;
    $self->set_defaultElement($x);
  }
  
  # AssociationEnd 
  #  templateParameter_AC 0..*
  #  <--> 
  #  template 1 UMMF::UML_1_5::Foundation::Core::ModelElement.
    if ( defined $self->{'template'} ) {
    my $x = $self->{'template'};
    $self->{'template'} = undef;
    $self->set_template($x);
  }
  
  # AssociationEnd 
  #  template_AC 0..1
  #  <--> 
  #  templateParameter 1 UMMF::UML_1_5::Foundation::Core::ModelElement.
    if ( defined $self->{'templateParameter'} ) {
    my $x = $self->{'templateParameter'};
    $self->{'templateParameter'} = undef;
    $self->set_templateParameter($x);
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
  }

  $self->UMMF::UML_1_5::Foundation::Core::TemplateParameter::___initialize;
  $self->UMMF::UML_1_5::Foundation::Core::Element::___initialize;

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
  $self->UMMF::UML_1_5::Foundation::Core::TemplateParameter::___create(@args);
  $self->UMMF::UML_1_5::Foundation::Core::Element::___create();

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
# AssociationEnd templateParameter_defaultElement <---> defaultElement
# type = UMMF::UML_1_5::Foundation::Core::ModelElement
# multiplicity = 0..1
# ordering = 

=head2 C<defaultElement>

  my $val = $obj->defaultElement;

Returns the AssociationEnd C<defaultElement> value of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.

=cut
sub defaultElement ($)
{
  my ($self) = @_;
		  
  $self->{'defaultElement'};
}


=head2 C<set_defaultElement>

  $obj->set_defaultElement($val);

Sets the AssociationEnd C<defaultElement> value.
C<$val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_defaultElement ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'defaultElement'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::TemplateParameter.defaultElement") }

    # Recursion lock
        $self->{'defaultElement'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_templateParameter_defaultElement($self) if $old;
    $val->add_templateParameter_defaultElement($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_defaultElement>

  $obj->add_defaultElement($val);

Adds the AssociationEnd C<defaultElement> value.
C<$val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_defaultElement ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'defaultElement'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::TemplateParameter.defaultElement");
      
    # confess("UMMF::UML_1_5::Foundation::Core::TemplateParameter::defaultElement: too many")
    # if defined $self->{'defaultElement'};

    # Recursion lock
        $self->{'defaultElement'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_templateParameter_defaultElement($self) if $old;
    $val->add_templateParameter_defaultElement($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_defaultElement>

  $obj->remove_defaultElement($val);

Removes the AssociationEnd C<defaultElement> value C<$val>.
Returns C<$obj>.

=cut
sub remove_defaultElement ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'defaultElement'}) eq $val ) { # Recursion lock
    $val = $self->{'defaultElement'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_templateParameter_defaultElement($self) if $old;
    $val->add_templateParameter_defaultElement($self)    if $val;

  
  }
}


=head2 C<clear_defaultElement>

  $obj->clear_defaultElement;

Clears the AssociationEnd C<defaultElement> links to L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_defaultElement ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'defaultElement'}) ) { # Recursion lock
    my $val = $self->{'defaultElement'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_templateParameter_defaultElement($self) if $old;
    $val->add_templateParameter_defaultElement($self)    if $val;

    }

  $self;
}


=head2 C<count_defaultElement>

  $obj->count_defaultElement;

Returns the number of elements of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement> associated with C<defaultElement>.

=cut
sub count_defaultElement ($)
{
  my ($self) = @_;

  my $x = $self->{'defaultElement'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd templateParameter_AC <---> template
# type = UMMF::UML_1_5::Foundation::Core::ModelElement
# multiplicity = 1
# ordering = 

=head2 C<template>

  my $val = $obj->template;

Returns the AssociationEnd C<template> value of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.

=cut
sub template ($)
{
  my ($self) = @_;
		  
  $self->{'template'};
}


=head2 C<set_template>

  $obj->set_template($val);

Sets the AssociationEnd C<template> value.
C<$val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_template ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'template'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::TemplateParameter.template") }

    # Recursion lock
        $self->{'template'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_templateParameter_AC($self) if $old;
    $val->add_templateParameter_AC($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_template>

  $obj->add_template($val);

Adds the AssociationEnd C<template> value.
C<$val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_template ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'template'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::TemplateParameter.template");
      
    # confess("UMMF::UML_1_5::Foundation::Core::TemplateParameter::template: too many")
    # if defined $self->{'template'};

    # Recursion lock
        $self->{'template'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_templateParameter_AC($self) if $old;
    $val->add_templateParameter_AC($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_template>

  $obj->remove_template($val);

Removes the AssociationEnd C<template> value C<$val>.
Returns C<$obj>.

=cut
sub remove_template ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'template'}) eq $val ) { # Recursion lock
    $val = $self->{'template'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_templateParameter_AC($self) if $old;
    $val->add_templateParameter_AC($self)    if $val;

  
  }
}


=head2 C<clear_template>

  $obj->clear_template;

Clears the AssociationEnd C<template> links to L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_template ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'template'}) ) { # Recursion lock
    my $val = $self->{'template'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_templateParameter_AC($self) if $old;
    $val->add_templateParameter_AC($self)    if $val;

    }

  $self;
}


=head2 C<count_template>

  $obj->count_template;

Returns the number of elements of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement> associated with C<template>.

=cut
sub count_template ($)
{
  my ($self) = @_;

  my $x = $self->{'template'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd template_AC <---> templateParameter
# type = UMMF::UML_1_5::Foundation::Core::ModelElement
# multiplicity = 1
# ordering = ordered

=head2 C<templateParameter>

  my $val = $obj->templateParameter;

Returns the AssociationEnd C<templateParameter> value of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.

=cut
sub templateParameter ($)
{
  my ($self) = @_;
		  
  $self->{'templateParameter'};
}


=head2 C<set_templateParameter>

  $obj->set_templateParameter($val);

Sets the AssociationEnd C<templateParameter> value.
C<$val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub set_templateParameter ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'templateParameter'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::TemplateParameter.templateParameter") }

    # Recursion lock
        $self->{'templateParameter'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_template_AC($self) if $old;
    $val->add_template_AC($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_templateParameter>

  $obj->add_templateParameter($val);

Adds the AssociationEnd C<templateParameter> value.
C<$val> must of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_templateParameter ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'templateParameter'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML_1_5::Foundation::Core::ModelElement')->__typecheck($val, "UMMF::UML_1_5::Foundation::Core::TemplateParameter.templateParameter");
      
    # confess("UMMF::UML_1_5::Foundation::Core::TemplateParameter::templateParameter: too many")
    # if defined $self->{'templateParameter'};

    # Recursion lock
        $self->{'templateParameter'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_template_AC($self) if $old;
    $val->add_template_AC($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_templateParameter>

  $obj->remove_templateParameter($val);

Removes the AssociationEnd C<templateParameter> value C<$val>.
Returns C<$obj>.

=cut
sub remove_templateParameter ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'templateParameter'}) eq $val ) { # Recursion lock
    $val = $self->{'templateParameter'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_template_AC($self) if $old;
    $val->add_template_AC($self)    if $val;

  
  }
}


=head2 C<clear_templateParameter>

  $obj->clear_templateParameter;

Clears the AssociationEnd C<templateParameter> links to L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement>.
Returns C<$obj>.

=cut
sub clear_templateParameter ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'templateParameter'}) ) { # Recursion lock
    my $val = $self->{'templateParameter'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_template_AC($self) if $old;
    $val->add_template_AC($self)    if $val;

    }

  $self;
}


=head2 C<count_templateParameter>

  $obj->count_templateParameter;

Returns the number of elements of type L<UMMF::UML_1_5::Foundation::Core::ModelElement|UMMF::UML_1_5::Foundation::Core::ModelElement> associated with C<templateParameter>.

=cut
sub count_templateParameter ($)
{
  my ($self) = @_;

  my $x = $self->{'templateParameter'};

  defined $x ? 1 : 0;
}







# End of Class TemplateParameter


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
