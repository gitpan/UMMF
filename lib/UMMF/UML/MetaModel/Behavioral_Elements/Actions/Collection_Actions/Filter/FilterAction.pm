# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction;

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

UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::CollectionAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::CollectionAction>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<0..1> : C<> ----E<gt>  C<subinput> : UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin C<1..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>

=item multiplicity = C<1..*>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<ordered>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<ARRAY>

=back


=head2 C<0..1> : C<> ----E<gt>  C<subtest> : UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>

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
  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::CollectionAction



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

  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaFilterAction>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction>.
Other receivers will return false.

=cut
sub isaFilterAction { 1 }


=head2 C<isaBehavioral_Elements__Actions__Collection_Actions__Filter__FilterAction>


Returns true if receiver is a L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction>.
Other receivers will return false.
This is the fully qualified version of the C<isaFilterAction> method.

=cut
sub isaBehavioral_Elements__Actions__Collection_Actions__Filter__FilterAction { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction' }



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
     'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction' =>
     {
       'table' => 'Behavioral_Elements__Actions__Collection_Actions__Filter__FilterAction',
       'abstract' => 0,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'subinput'
       => {
	 'type_impl' => 'iarray',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin',

                           'table' => 'Behavioral_Elements__Actions__Collection_Actions__Filter__FilterAction__subinput', 

                                                               'coll' => 'filterAction',

                  'slot' => 'filterAction_i', 

                                                                      }
      ,
                  	 	       'subtest'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin',

                                             'col' => 'subtest', 

                                                                                                                   }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::CollectionAction',  ],
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
  #   0..1
  #  <--> 
  #  subinput 1..* UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin.
    if ( defined $self->{'subinput'} ) {
    my $x = $self->{'subinput'};
        $self->{'subinput'} = [ ];
        $self->set_subinput(@$x);
  }
  
  # AssociationEnd 
  #   0..1
  #  <--> 
  #  subtest 1 UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin.
    if ( defined $self->{'subtest'} ) {
    my $x = $self->{'subtest'};
    $self->{'subtest'} = undef;
    $self->set_subtest($x);
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
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action');
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::CollectionAction');
  }

  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action::___initialize;
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::CollectionAction::___initialize;

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
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::Action::___create();
  $self->UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::CollectionAction::___create();

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
# AssociationEnd  <---> subinput
# type = UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin
# multiplicity = 1..*
# ordering = ordered

=head2 C<subinput>

  my @val = $obj->subinput;
  my $ary_val = $obj->subinput;

Returns the AssociationEnd C<subinput> values of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub subinput ($)
{
  my ($self) = @_;

    my $x = $self->{'subinput'} ||= [ ];

  wantarray ? @{$x} : $x;
  
}


=head2 C<index_subinput>

  my $x = $obj->index_subinput($i);
  my @x = $obj->index_subinput($i, $count);

In scalar context, returns the value of AssociationEnd C<subinput> at index C<$i>.
In array context, returns the values between index C<$i> and C<$i + $count - 1>, inclusive.

=cut
sub index_subinput ($$@)
{
  my ($self, $i, $count) = @_;

  ;

  my $val = $self->{'subinput'} ||= [ ];

  ;

  wantarray ? $val->[$i .. (defined $count ? $i + $count - 1 : $i)]
            : $val->[$i];
}


=head2 C<index_of_subinput>

  my $index = $obj->index_of_subinput($val);

Returns the index of C<$val> in AssociationEnd C<subinput>.
Return C<undef> if C<$val> is not in C<subinput>.

=cut
sub index_of_subinput ($$)
{
  my ($self, $x) = @_;

  ;

  my $val = $self->{'subinput'} ||= [ ];

  ;

  __ummf_array_index($val, $x);
}


=head2 C<set_subinput>

  $obj->set_subinput(@val);

Sets the AssociationEnd C<subinput> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.
Returns C<$obj>.

=cut
sub set_subinput ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_subinput;
  $self->add_subinput(@val);
}


=head2 C<set_index_subinput>

  $obj->set_index_subinput($i, $val);

Sets the value of AssociationEnd C<subinput> at index C<$i>.
Returns self.

=cut
sub set_index_subinput ($$$)
{
  my ($self, $i, $val) = @_;

  ;

  my $x = $self->{'subinput'} ||= [ ];

  no warnings;
  my $old;
  if ( ($old = $x->[$i]) ne $val) {
    # Recursion lock
        $x->[$i] = $val
    ;

    # Remove and add associations with other ends.
        
    ;
  }

  $self;
}


=head2 C<add_subinput>

  $obj->add_subinput(@val);

Adds AssociationEnd C<subinput> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.
Returns C<$obj>.

=cut
sub add_subinput ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'subinput'} ||= [ ];
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if grep($_ eq $val, @$x);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction.subinput");

    # Recursion lock
        push(@{$x}, $val);
        
    # Remove and add associations with other ends.
          }
  
  $self;
}


=head2 C<add_index_subinput>

  $obj->add_index_subinput($i, @val);

Adds AssociationEnd C<subinput> values at index C<$i>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.
Returns C<$obj>.

=cut
sub add_index_subinput ($$@)
{
  my ($self, $i, @val) = @_;

  
    my $x = $self->{'subinput'} ||= [ ];
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if grep($_ eq $val, @$x);
        $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction.subinput");

    # Recursion lock
        splice(@{$x}, $i, 0, $val); # Recursion lock
        ++ $i;
    
    # Remove and add associations with other ends.
          }
  
  
  $self;
}


=head2 C<remove_subinput>

  $obj->remove_subinput(@val);

Removes the AssociationEnd C<subinput> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.
Returns C<$obj>.

=cut
sub remove_subinput ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'subinput'} ||= [ ];
  
  for my $old ( @val ) {
    # Recursion lock
        my $i; # index of $old in @$x.
    next unless defined($i = __ummf_array_index($x, $old));
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction.subinput");

    # Recursion lock
        splice(@$x, $i, 1);     
    $val = undef;

    # Remove associations with other ends.

        ;

  }
  
  $self;
}


=head2 C<clear_subinput>

  $obj->clear_subinput;

Clears the AssociationEnd C<subinput> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.
Returns C<$obj>.

=cut
sub clear_subinput ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'subinput'} ||= [ ];
  
  my $val; # Place holder for other MACRO.
  
    $self->{'subinput'} = [ ];  # Recursion lock
  for my $old ( @$x ) { # Recursion lock
  
    # Remove associations with other ends.

        ;

  }
  
  $self;
}


=head2 C<count_subinput>

  $obj->count_subinput;

Returns the number of elements associated with C<subinput>.

=cut
sub count_subinput ($)
{
  my ($self) = @_;

  my $x = $self->{'subinput'};

    defined $x ? scalar @$x : 0;
  }




=for html <hr/>

=cut

#################################################################
# AssociationEnd  <---> subtest
# type = UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin
# multiplicity = 1
# ordering = 

=head2 C<subtest>

  my $val = $obj->subtest;

Returns the AssociationEnd C<subtest> value of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.

=cut
sub subtest ($)
{
  my ($self) = @_;
		  
  $self->{'subtest'};
}


=head2 C<set_subtest>

  $obj->set_subtest($val);

Sets the AssociationEnd C<subtest> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.
Returns C<$obj>.

=cut
sub set_subtest ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'subtest'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction.subtest") }

    # Recursion lock
        $self->{'subtest'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_subtest>

  $obj->add_subtest($val);

Adds the AssociationEnd C<subtest> value.
C<$val> must of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_subtest ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'subtest'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin')->__typecheck($val, "UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction.subtest");
      
    # confess("UMMF::UML::MetaModel::Behavioral_Elements::Actions::Collection_Actions::Filter::FilterAction::subtest: too many")
    # if defined $self->{'subtest'};

    # Recursion lock
        $self->{'subtest'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_subtest>

  $obj->remove_subtest($val);

Removes the AssociationEnd C<subtest> value C<$val>.
Returns C<$obj>.

=cut
sub remove_subtest ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'subtest'}) eq $val ) { # Recursion lock
    $val = $self->{'subtest'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_subtest>

  $obj->clear_subtest;

Clears the AssociationEnd C<subtest> links to L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin>.
Returns C<$obj>.

=cut
sub clear_subtest ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'subtest'}) ) { # Recursion lock
    my $val = $self->{'subtest'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_subtest>

  $obj->count_subtest;

Returns the number of elements of type L<UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin|UMMF::UML::MetaModel::Behavioral_Elements::Actions::Action_Foundation::OutputPin> associated with C<subtest>.

=cut
sub count_subtest ($)
{
  my ($self) = @_;

  my $x = $self->{'subtest'};

  defined $x ? 1 : 0;
}







# End of Class FilterAction


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
