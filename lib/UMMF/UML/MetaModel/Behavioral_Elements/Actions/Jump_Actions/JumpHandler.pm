# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler;

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

UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler -- 

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


=head2 C<0..*> : C<jumpHandler> ----E<gt>  C<body> : UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..*> : C<> ----E<gt>  C<jumpType> : UMMF::UML::MetaModel::Foundation::Core::Classifier C<1>



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


=head2 C<0..*> : C<jumpHandler> ----E<gt>  C<protectedAction> : UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action>

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

  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaJumpHandler>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler>.
Other receivers will return false.

=cut
sub isaJumpHandler { 1 }


=head2 C<isaBehavioral_Elements__Actions__Jump_Actions__JumpHandler>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler>.
Other receivers will return false.
This is the fully qualified version of the C<isaJumpHandler> method.

=cut
sub isaBehavioral_Elements__Actions__Jump_Actions__JumpHandler { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::Actions::Jump_Actions::JumpHandler'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::Actions::Jump_Actions::JumpHandler' }



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
     'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler' =>
     {
       'table' => 'Behavioral_Elements__Actions__Jump_Actions__JumpHandler',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'body'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction',

                                             'col' => 'body', 

                                                                                                                   }
      ,
                  	 	       'jumpType'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::Classifier',

                                             'col' => 'jumpType', 

                                                                                                                   }
      ,
                  	 	       'protectedAction'
       => {
	 'type_impl' => 'set',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action',

                           'table' => 'Behavioral_Elements__Actions__JumpHandler_ProtectedAction', 

                                                      'item' => 'protectedAction', 

                  'coll' => 'jumpHandler',

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
  #  jumpHandler 0..*
  #  <--> 
  #  body 1 UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction.
    if ( defined $self->{'body'} ) {
    my $x = $self->{'body'};
    $self->{'body'} = undef;
    $self->set_body($x);
  }
  
  # AssociationEnd 
  #   0..*
  #  <--> 
  #  jumpType 1 UMMF::UML::MetaModel::Foundation::Core::Classifier.
    if ( defined $self->{'jumpType'} ) {
    my $x = $self->{'jumpType'};
    $self->{'jumpType'} = undef;
    $self->set_jumpType($x);
  }
  
  # AssociationEnd 
  #  jumpHandler 0..*
  #  <--> 
  #  protectedAction 0..* UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action.
    if ( defined $self->{'protectedAction'} ) {
    my $x = $self->{'protectedAction'};
        $self->{'protectedAction'} = Set::Object->new();
        $self->set_protectedAction(@$x);
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

  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler::___initialize;
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
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler::___create(@args);
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
# AssociationEnd jumpHandler <---> body
# type = UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction
# multiplicity = 1
# ordering = 

=head2 C<body>

  my $val = $obj->body;

Returns the AssociationEnd C<body> value of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction>.

=cut
sub body ($)
{
  my ($self) = @_;
		  
  $self->{'body'};
}


=head2 C<set_body>

  $obj->set_body($val);

Sets the AssociationEnd C<body> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction>.
Returns C<$obj>.

=cut
sub set_body ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'body'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler.body") }

    # Recursion lock
        $self->{'body'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_body>

  $obj->add_body($val);

Adds the AssociationEnd C<body> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_body ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'body'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler.body");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler::body: too many")
    # if defined $self->{'body'};

    # Recursion lock
        $self->{'body'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_body>

  $obj->remove_body($val);

Removes the AssociationEnd C<body> value C<$val>.
Returns C<$obj>.

=cut
sub remove_body ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'body'}) eq $val ) { # Recursion lock
    $val = $self->{'body'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_body>

  $obj->clear_body;

Clears the AssociationEnd C<body> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction>.
Returns C<$obj>.

=cut
sub clear_body ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'body'}) ) { # Recursion lock
    my $val = $self->{'body'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_body>

  $obj->count_body;

Returns the number of elements of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::HandlerAction> associated with C<body>.

=cut
sub count_body ($)
{
  my ($self) = @_;

  my $x = $self->{'body'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd  <---> jumpType
# type = UMMF::UML::MetaModel::Foundation::Core::Classifier
# multiplicity = 1
# ordering = 

=head2 C<jumpType>

  my $val = $obj->jumpType;

Returns the AssociationEnd C<jumpType> value of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.

=cut
sub jumpType ($)
{
  my ($self) = @_;
		  
  $self->{'jumpType'};
}


=head2 C<set_jumpType>

  $obj->set_jumpType($val);

Sets the AssociationEnd C<jumpType> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Returns C<$obj>.

=cut
sub set_jumpType ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'jumpType'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Foundation::Core::Classifier')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler.jumpType") }

    # Recursion lock
        $self->{'jumpType'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_jumpType>

  $obj->add_jumpType($val);

Adds the AssociationEnd C<jumpType> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_jumpType ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'jumpType'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::Classifier')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler.jumpType");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler::jumpType: too many")
    # if defined $self->{'jumpType'};

    # Recursion lock
        $self->{'jumpType'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_jumpType>

  $obj->remove_jumpType($val);

Removes the AssociationEnd C<jumpType> value C<$val>.
Returns C<$obj>.

=cut
sub remove_jumpType ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'jumpType'}) eq $val ) { # Recursion lock
    $val = $self->{'jumpType'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_jumpType>

  $obj->clear_jumpType;

Clears the AssociationEnd C<jumpType> links to L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier>.
Returns C<$obj>.

=cut
sub clear_jumpType ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'jumpType'}) ) { # Recursion lock
    my $val = $self->{'jumpType'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_jumpType>

  $obj->count_jumpType;

Returns the number of elements of type L<UMMF::UML::MetaModel::Foundation::Core::Classifier|UMMF::UML::MetaModel::Foundation::Core::Classifier> associated with C<jumpType>.

=cut
sub count_jumpType ($)
{
  my ($self) = @_;

  my $x = $self->{'jumpType'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd jumpHandler <---> protectedAction
# type = UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action
# multiplicity = 0..*
# ordering = 

=head2 C<protectedAction>

  my @val = $obj->protectedAction;
  my $ary_val = $obj->protectedAction;

Returns the AssociationEnd C<protectedAction> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub protectedAction ($)
{
  my ($self) = @_;

    my $x = $self->{'protectedAction'};

  # confess("Container for protectedAction $x is not a blessed ref: " . Data::Dumper->new([ $self ], [qw($self)])->Maxdepth(2)->Dump()) if $x && ref($x) !~ /::/;
 
  wantarray ? ($x ? $x->members() : ()) : [ $x ? $x->members() : () ];
  
}


=head2 C<set_protectedAction>

  $obj->set_protectedAction(@val);

Sets the AssociationEnd C<protectedAction> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action>.
Returns C<$obj>.

=cut
sub set_protectedAction ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_protectedAction;
  $self->add_protectedAction(@val);
}


=head2 C<add_protectedAction>

  $obj->add_protectedAction(@val);

Adds AssociationEnd C<protectedAction> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action>.
Returns C<$obj>.

=cut
sub add_protectedAction ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'protectedAction'} ||= Set::Object->new();
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if $x->includes($val);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler.protectedAction");

    # Recursion lock
        $x->insert($val);
    # weaken?
    
    # Remove and add associations with other ends.
          }
  
  $self;
}


=head2 C<remove_protectedAction>

  $obj->remove_protectedAction(@val);

Removes the AssociationEnd C<protectedAction> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action>.
Returns C<$obj>.

=cut
sub remove_protectedAction ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'protectedAction'} ||= Set::Object->new();
  
  for my $old ( @val ) {
    # Recursion lock
        next unless $x->includes($old);
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Jump_Actions::JumpHandler.protectedAction");

    # Recursion lock
        $x->remove($old);
    
    $val = undef;

    # Remove associations with other ends.

        ;

  }
  
  $self;
}


=head2 C<clear_protectedAction>

  $obj->clear_protectedAction;

Clears the AssociationEnd C<protectedAction> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action>.
Returns C<$obj>.

=cut
sub clear_protectedAction ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'protectedAction'} ||= Set::Object->new();
  
  my $val; # Place holder for other MACRO.
  
    $self->{'protectedAction'} = Set::Object->new(); # Recursion lock
  for my $old ( $x->members() ) {     # Recursion lock
  
    # Remove associations with other ends.

        ;

  }
  
  $self;
}


=head2 C<count_protectedAction>

  $obj->count_protectedAction;

Returns the number of elements associated with C<protectedAction>.

=cut
sub count_protectedAction ($)
{
  my ($self) = @_;

  my $x = $self->{'protectedAction'};

    defined $x ? $x->size : 0;
  }







# End of Class JumpHandler


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
