# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: Perl.txt,v 1.77 2006/05/14 01:40:03 kstephens Exp $

package UMMF::UML_1_5::Foundation::Data_Types::Expression;

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

UMMF::UML_1_5::Foundation::Data_Types::Expression -- 

=head1 VERSION

1.5

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML_1_5::Foundation::Core::Class|UMMF::UML_1_5::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML_1_5::__ObjectBase|UMMF::UML_1_5::__ObjectBase>




=head1 ATTRIBUTES


=head2 C<language> : UMMF::UML_1_5::Foundation::Data_Types::Name 


=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::Attribute|UMMF::UML_1_5::Foundation::Core::Attribute>

=item type = L<UMMF::UML_1_5::Foundation::Data_Types::Name|UMMF::UML_1_5::Foundation::Data_Types::Name>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = I<UNSPECIFIED>

=item container_type = C<Set::Object>

=back


=head2 C<body> : UMMF::UML_1_5::Foundation::Data_Types::String 


=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::Attribute|UMMF::UML_1_5::Foundation::Core::Attribute>

=item type = L<UMMF::UML_1_5::Foundation::Data_Types::String|UMMF::UML_1_5::Foundation::Data_Types::String>

=item visibility = C<private>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<unordered>

=item initialValue = I<UNSPECIFIED>

=item container_type = C<Set::Object>

=back



=head1 ASSOCIATIONS


=head2 C<expression> : I<THIS> C<0..*> E<lt>---E<gt>  C<procedure> : UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure C<0..1>



=over 4

=item metatype = L<UMMF::UML_1_5::Foundation::Core::AssociationEnd|UMMF::UML_1_5::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure|UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure>

=item multiplicity = C<0..1>

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


  UMMF::UML_1_5::__ObjectBase

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

  UMMF::UML_1_5::Foundation::Data_Types::Expression->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML_1_5::Foundation::Data_Types::Expression|UMMF::UML_1_5::Foundation::Data_Types::Expression>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML_1_5::Foundation::Data_Types::Expression')  ;
}


=head2 C<__typecheck>

  UMMF::UML_1_5::Foundation::Data_Types::Expression->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML_1_5::Foundation::Data_Types::Expression->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML_1_5::Foundation::Data_Types::Expression' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaExpression>


Returns true if receiver is a L<UMMF::UML_1_5::Foundation::Data_Types::Expression|UMMF::UML_1_5::Foundation::Data_Types::Expression>.
Other receivers will return false.

=cut
sub isaExpression { 1 }


=head2 C<isaFoundation__Data_Types__Expression>


Returns true if receiver is a L<UMMF::UML_1_5::Foundation::Data_Types::Expression|UMMF::UML_1_5::Foundation::Data_Types::Expression>.
Other receivers will return false.
This is the fully qualified version of the C<isaExpression> method.

=cut
sub isaFoundation__Data_Types__Expression { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Foundation::Data_Types::Expression'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Foundation::Data_Types::Expression' }



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
     'UMMF::UML_1_5::Foundation::Data_Types::Expression' =>
     {
       'table' => 'Foundation__Data_Types__Expression',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 	       'language'
       => {
	 'type_impl' => 'string',
                                             'col' => 'language', 

                                                                                 'aggreg' => '1', 

                                           }
      ,
         	       'body'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::Foundation::Data_Types::String',

                                             'col' => 'body', 

                                                                                 'aggreg' => '1', 

                                           }
      ,
         
	 # Associations
	 	 	       'procedure'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure',

                  'null' => '1', 

                                    'col' => 'procedure', 

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

    # Attribute language
  if ( exists $self->{'language'} ) {
    my $x = $self->{'language'};
    $self->{'language'} = undef;
        $self->set_language($x);
      } else {
      }
  
    # Attribute body
  if ( exists $self->{'body'} ) {
    my $x = $self->{'body'};
    $self->{'body'} = undef;
        $self->set_body($x);
      } else {
      }
  


  # Associations

  # AssociationEnd 
  #  expression 0..*
  #  <--> 
  #  procedure 0..1 UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure.
    if ( defined $self->{'procedure'} ) {
    my $x = $self->{'procedure'};
    $self->{'procedure'} = undef;
    $self->set_procedure($x);
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

  $self->UMMF::UML_1_5::Foundation::Data_Types::Expression::___initialize;

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
  $self->UMMF::UML_1_5::Foundation::Data_Types::Expression::___create(@args);

  $self;
}




#################################################################
# Attributes
#



=for html <hr/>

=cut

#################################################################
# Attribute language
# type = UMMF::UML_1_5::Foundation::Data_Types::Name
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = 

=head2 C<language>

  my $val = $obj->language;

Returns the L<UMMF::UML_1_5::Foundation::Data_Types::Name|UMMF::UML_1_5::Foundation::Data_Types::Name> value of Attribute C<language>.

=cut
sub language ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'language'};

  ;

  $val;
}


=head2 C<set_language>

  $obj->set_language($val);

Sets the value of Attribute C<language>.
C<$val> must be of type L<UMMF::UML_1_5::Foundation::Data_Types::Name|UMMF::UML_1_5::Foundation::Data_Types::Name> or C<undef>.
Returns C<$obj>.

=cut
sub set_language ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    ;
  }

    $self->{'language'} = $val
  ;

  ;

  $self;
}


=head2 C<count_language>

  $obj->count_language;

Returns the number of elements (0 or 1) in C<language>.

=cut
sub count_language ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'language'};

  ;

  defined $val ? 1 : 0;
}



=for html <hr/>

=cut

#################################################################
# Attribute body
# type = UMMF::UML_1_5::Foundation::Data_Types::String
# multiplicity = 1
# ordering = unordered
# ownerScope = instance
# initialValue = 

=head2 C<body>

  my $val = $obj->body;

Returns the L<UMMF::UML_1_5::Foundation::Data_Types::String|UMMF::UML_1_5::Foundation::Data_Types::String> value of Attribute C<body>.

=cut
sub body ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'body'};

  ;

  $val;
}


=head2 C<set_body>

  $obj->set_body($val);

Sets the value of Attribute C<body>.
C<$val> must be of type L<UMMF::UML_1_5::Foundation::Data_Types::String|UMMF::UML_1_5::Foundation::Data_Types::String> or C<undef>.
Returns C<$obj>.

=cut
sub set_body ($$)
{
  my ($self, $val) = @_;

  ;

  if ( defined $val ) {
    ;
  }

    $self->{'body'} = $val
  ;

  ;

  $self;
}


=head2 C<count_body>

  $obj->count_body;

Returns the number of elements (0 or 1) in C<body>.

=cut
sub count_body ($)
{
  my ($self) = @_;

  ;

  my $val = $self->{'body'};

  ;

  defined $val ? 1 : 0;
}




#################################################################
# Association
#


=for html <hr/>

=cut

#################################################################
# AssociationEnd expression <---> procedure
# type = UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure
# multiplicity = 0..1
# ordering = 

=head2 C<procedure>

  my $val = $obj->procedure;

Returns the AssociationEnd C<procedure> value of type L<UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure|UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure>.

=cut
sub procedure ($)
{
  my ($self) = @_;
		  
  $self->{'procedure'};
}


=head2 C<set_procedure>

  $obj->set_procedure($val);

Sets the AssociationEnd C<procedure> value.
C<$val> must of type L<UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure|UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure>.
Returns C<$obj>.

=cut
sub set_procedure ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'procedure'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure')->__typecheck($val, "UMMF::UML_1_5::Foundation::Data_Types::Expression.procedure") }

    # Recursion lock
        $self->{'procedure'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_expression($self) if $old;
    $val->add_expression($self)    if $val;

    }
		  
  $self;
}


=head2 C<add_procedure>

  $obj->add_procedure($val);

Adds the AssociationEnd C<procedure> value.
C<$val> must of type L<UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure|UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_procedure ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'procedure'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure')->__typecheck($val, "UMMF::UML_1_5::Foundation::Data_Types::Expression.procedure");
      
    # confess("UMMF::UML_1_5::Foundation::Data_Types::Expression::procedure: too many")
    # if defined $self->{'procedure'};

    # Recursion lock
        $self->{'procedure'} = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_expression($self) if $old;
    $val->add_expression($self)    if $val;

  
  }

  $self;
}


=head2 C<remove_procedure>

  $obj->remove_procedure($val);

Removes the AssociationEnd C<procedure> value C<$val>.
Returns C<$obj>.

=cut
sub remove_procedure ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'procedure'}) eq $val ) { # Recursion lock
    $val = $self->{'procedure'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_expression($self) if $old;
    $val->add_expression($self)    if $val;

  
  }
}


=head2 C<clear_procedure>

  $obj->clear_procedure;

Clears the AssociationEnd C<procedure> links to L<UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure|UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure>.
Returns C<$obj>.

=cut
sub clear_procedure ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'procedure'}) ) { # Recursion lock
    my $val = $self->{'procedure'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
        
    $old->remove_expression($self) if $old;
    $val->add_expression($self)    if $val;

    }

  $self;
}


=head2 C<count_procedure>

  $obj->count_procedure;

Returns the number of elements of type L<UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure|UMMF::UML_1_5::Behavioral_Elements::Common_Behavior::Procedure> associated with C<procedure>.

=cut
sub count_procedure ($)
{
  my ($self) = @_;

  my $x = $self->{'procedure'};

  defined $x ? 1 : 0;
}







# End of Class Expression


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
