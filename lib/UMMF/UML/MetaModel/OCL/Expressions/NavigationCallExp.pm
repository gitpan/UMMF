# -*- perl -*-
# DO NOT EDIT - This file is generated by UMMF; http://ummf.sourceforge.net 
# From template: $Id: PerlTemplate.txt,v 1.74 2004/08/01 03:50:07 kstephens Exp $

package UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp;

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

UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp -- 

=head1 VERSION

1.0

=head1 SYNOPSIS

=head1 DESCRIPTION 

=head1 USAGE

=head1 EXPORT

=head1 METATYPE

L<UMMF::UML::MetaModel::Foundation::Core::Class|UMMF::UML::MetaModel::Foundation::Core::Class>

=head1 SUPERCLASSES

L<UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp|UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp>




=head1 ATTRIBUTES

I<NO ATTRIBUTES>


=head1 ASSOCIATIONS


=head2 C<1> : C<> ----E<gt>  C<navigationSource> : UMMF::UML::MetaModel::Foundation::Core::AssociationEnd C<1>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item multiplicity = C<1>

=item changeability = C<changeable>

=item targetScope = C<instance>

=item ordering = C<>

=item isNavigable = C<1>

=item aggregation = C<none>

=item visibility = C<public>

=item container_type = C<Set::Object>

=back


=head2 C<0..1> : C<navigationCallExp> E<lt>---E<gt>  C<qualifiers> : UMMF::UML::MetaModel::OCL::Expressions::OclExpression C<0..*>



=over 4

=item metatype = L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>

=item type = L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>

=item multiplicity = C<0..*>

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
use UMMF::UML::MetaModel::__ObjectBase qw(:__ummf_array);


#################################################################
# Generalizations
#

use base qw(
  UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp



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

  UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp->__validate_type($value);

Returns true if C<$value> is a valid representation of L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp>.

=cut
sub __validate_type($$)
{
  my ($self, $x) = @_;

  no warnings;

  UNIVERSAL::isa($x, 'UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp')  ;
}


=head2 C<__typecheck>

  UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp->__typecheck($value, $msg);

Calls C<confess()> with C<$msg> if C<<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp->__validate_type($value)>> is false.

=cut
sub __typecheck
{
  my ($self, $x, $msg) = @_;

  confess("typecheck: $msg: type '" . 'UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp' . ": value '$x'")
    unless __validate_type($self, $x);
}


=head2 C<isaNavigationCallExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp>.
Other receivers will return false.

=cut
sub isaNavigationCallExp { 1 }


=head2 C<isaOCL__Expressions__NavigationCallExp>


Returns true if receiver is a L<UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp|UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp>.
Other receivers will return false.
This is the fully qualified version of the C<isaNavigationCallExp> method.

=cut
sub isaOCL__Expressions__NavigationCallExp { 1 }


#################################################################
# Introspection
#

=head2 C<__model_name> 

  my $name = $obj_or_package->__model_name;

Returns the UML Model name (C<'OCL::Expressions::NavigationCallExp'>) for an object or package of
this Classifier.

=cut
sub __model_name { 'OCL::Expressions::NavigationCallExp' }



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
     'UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp' =>
     {
       'table' => 'OCL__Expressions__NavigationCallExp',
       'abstract' => 1,
       'slots' => 
       { 
	 # Attributes
	 
	 # Associations
	 	 	       'navigationSource'
       => {
	 'type_impl' => 'ref',
         'class' => 'UMMF::UML::MetaModel::Foundation::Core::AssociationEnd',

                                             'col' => 'navigationSource', 

                                                                                                                   }
      ,
                  	 	       'qualifiers'
       => {
	 'type_impl' => 'iarray',
         'class' => 'UMMF::UML::MetaModel::OCL::Expressions::OclExpression',

                           'table' => 'OCL__Expressions__NavigationCallExp__qualifiers', 

                                                               'coll' => 'navigationCallExp',

                  'slot' => 'navigationCallExp_i', 

                                    'aggreg' => '1', 

                                           }
      ,
                         },
       'bases' => [  'UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp',  ],
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
  #   1
  #  <--> 
  #  navigationSource 1 UMMF::UML::MetaModel::Foundation::Core::AssociationEnd.
    if ( defined $self->{'navigationSource'} ) {
    my $x = $self->{'navigationSource'};
    $self->{'navigationSource'} = undef;
    $self->set_navigationSource($x);
  }
  
  # AssociationEnd 
  #  navigationCallExp 0..1
  #  <--> 
  #  qualifiers 0..* UMMF::UML::MetaModel::OCL::Expressions::OclExpression.
    if ( defined $self->{'qualifiers'} ) {
    my $x = $self->{'qualifiers'};
        $self->{'qualifiers'} = [ ];
        $self->set_qualifiers(@$x);
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
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclExpression');
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::PropertyCallExp');
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp');
  }

  $self->UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___initialize;
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___initialize;
  $self->UMMF::UML::MetaModel::OCL::Expressions::OclExpression::___initialize;
  $self->UMMF::UML::MetaModel::OCL::Expressions::PropertyCallExp::___initialize;
  $self->UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp::___initialize;

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
  $self->UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp::___create(@args);
  $self->UMMF::UML::MetaModel::Foundation::Core::Element::___create();
  $self->UMMF::UML::MetaModel::Foundation::Core::ModelElement::___create();
  $self->UMMF::UML::MetaModel::OCL::Expressions::OclExpression::___create();
  $self->UMMF::UML::MetaModel::OCL::Expressions::PropertyCallExp::___create();
  $self->UMMF::UML::MetaModel::OCL::Expressions::ModelPropertyCallExp::___create();

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
# AssociationEnd  <---> navigationSource
# type = UMMF::UML::MetaModel::Foundation::Core::AssociationEnd
# multiplicity = 1
# ordering = 

=head2 C<navigationSource>

  my $val = $obj->navigationSource;

Returns the AssociationEnd C<navigationSource> value of type L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>.

=cut
sub navigationSource ($)
{
  my ($self) = @_;
		  
  $self->{'navigationSource'};
}


=head2 C<set_navigationSource>

  $obj->set_navigationSource($val);

Sets the AssociationEnd C<navigationSource> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>.
Returns C<$obj>.

=cut
sub set_navigationSource ($$)
{
  my ($self, $val) = @_;
		  
  no warnings; # Use of uninitialized value in string ne at ...
		  
  my $old;
  if ( ($old = $self->{'navigationSource'}) ne $val ) { # Recursion lock

    if ( defined $val ) { $self->__use('UMMF::UML::MetaModel::Foundation::Core::AssociationEnd')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp.navigationSource") }

    # Recursion lock
        $self->{'navigationSource'} = $val
    ;

    # Remove and add associations with other ends.
          }
		  
  $self;
}


=head2 C<add_navigationSource>

  $obj->add_navigationSource($val);

Adds the AssociationEnd C<navigationSource> value.
C<$val> must of type L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>.
Throws exception if a value already exists.
Returns C<$obj>.

=cut
sub add_navigationSource ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'navigationSource'}) ne $val ) { # Recursion lock
    $self->__use('UMMF::UML::MetaModel::Foundation::Core::AssociationEnd')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp.navigationSource");
      
    # confess("UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp::navigationSource: too many")
    # if defined $self->{'navigationSource'};

    # Recursion lock
        $self->{'navigationSource'} = $val
    ;

    # Remove and add associations with other ends.
        
  }

  $self;
}


=head2 C<remove_navigationSource>

  $obj->remove_navigationSource($val);

Removes the AssociationEnd C<navigationSource> value C<$val>.
Returns C<$obj>.

=cut
sub remove_navigationSource ($$)
{
  my ($self, $val) = @_;

  no warnings; # Use of uninitialized value in string ne at ...

  my $old;
  if ( ($old = $self->{'navigationSource'}) eq $val ) { # Recursion lock
    $val = $self->{'navigationSource'} = undef;         # Recursion lock

    # Remove and add associations with other ends.
        
  }
}


=head2 C<clear_navigationSource>

  $obj->clear_navigationSource;

Clears the AssociationEnd C<navigationSource> links to L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd>.
Returns C<$obj>.

=cut
sub clear_navigationSource ($@)
{
  my ($self) = @_;

  my $old;
  if ( defined ($old = $self->{'navigationSource'}) ) { # Recursion lock
    my $val = $self->{'navigationSource'} = undef;      # Recursion lock

    # Remove and add associations with other ends.
          }

  $self;
}


=head2 C<count_navigationSource>

  $obj->count_navigationSource;

Returns the number of elements of type L<UMMF::UML::MetaModel::Foundation::Core::AssociationEnd|UMMF::UML::MetaModel::Foundation::Core::AssociationEnd> associated with C<navigationSource>.

=cut
sub count_navigationSource ($)
{
  my ($self) = @_;

  my $x = $self->{'navigationSource'};

  defined $x ? 1 : 0;
}




=for html <hr/>

=cut

#################################################################
# AssociationEnd navigationCallExp <---> qualifiers
# type = UMMF::UML::MetaModel::OCL::Expressions::OclExpression
# multiplicity = 0..*
# ordering = ordered

=head2 C<qualifiers>

  my @val = $obj->qualifiers;
  my $ary_val = $obj->qualifiers;

Returns the AssociationEnd C<qualifiers> values of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
In array context, returns all the objects in the Association.
In scalar context, returns an array ref of all the objects in the Association.

=cut
sub qualifiers ($)
{
  my ($self) = @_;

    my $x = $self->{'qualifiers'} ||= [ ];

  wantarray ? @{$x} : $x;
  
}


=head2 C<index_qualifiers>

  my $x = $obj->index_qualifiers($i);
  my @x = $obj->index_qualifiers($i, $count);

In scalar context, returns the value of AssociationEnd C<qualifiers> at index C<$i>.
In array context, returns the values between index C<$i> and C<$i + $count - 1>, inclusive.

=cut
sub index_qualifiers ($$@)
{
  my ($self, $i, $count) = @_;

  ;

  my $val = $self->{'qualifiers'} ||= [ ];

  ;

  wantarray ? $val->[$i .. (defined $count ? $i + $count - 1 : $i)]
            : $val->[$i];
}


=head2 C<index_of_qualifiers>

  my $index = $obj->index_of_qualifiers($val);

Returns the index of C<$val> in AssociationEnd C<qualifiers>.
Return C<undef> if C<$val> is not in C<qualifiers>.

=cut
sub index_of_qualifiers ($$)
{
  my ($self, $x) = @_;

  ;

  my $val = $self->{'qualifiers'} ||= [ ];

  ;

  __ummf_array_index($val, $x);
}


=head2 C<set_qualifiers>

  $obj->set_qualifiers(@val);

Sets the AssociationEnd C<qualifiers> value.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub set_qualifiers ($@)
{
  my ($self, @val) = @_;
  
  $self->clear_qualifiers;
  $self->add_qualifiers(@val);
}


=head2 C<set_index_qualifiers>

  $obj->set_index_qualifiers($i, $val);

Sets the value of AssociationEnd C<qualifiers> at index C<$i>.
Returns self.

=cut
sub set_index_qualifiers ($$$)
{
  my ($self, $i, $val) = @_;

  ;

  my $x = $self->{'qualifiers'} ||= [ ];

  no warnings;
  my $old;
  if ( ($old = $x->[$i]) ne $val) {
    # Recursion lock
        $x->[$i] = $val
    ;

    # Remove and add associations with other ends.
        
    $old->remove_navigationCallExp($self) if $old;
    $val->add_navigationCallExp($self)    if $val;

  
    ;
  }

  $self;
}


=head2 C<add_qualifiers>

  $obj->add_qualifiers(@val);

Adds AssociationEnd C<qualifiers> values.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub add_qualifiers ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'qualifiers'} ||= [ ];
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if grep($_ eq $val, @$x);
        $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclExpression')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp.qualifiers");

    # Recursion lock
        push(@{$x}, $val);
        
    # Remove and add associations with other ends.
        
    $old->remove_navigationCallExp($self) if $old;
    $val->add_navigationCallExp($self)    if $val;

    }
  
  $self;
}


=head2 C<add_index_qualifiers>

  $obj->add_index_qualifiers($i, @val);

Adds AssociationEnd C<qualifiers> values at index C<$i>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub add_index_qualifiers ($$@)
{
  my ($self, $i, @val) = @_;

  
    my $x = $self->{'qualifiers'} ||= [ ];
    my $old; # Place holder for other MACRO.
  
  for my $val ( @val ) {
    # Recursion lock
        next if grep($_ eq $val, @$x);
        $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclExpression')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp.qualifiers");

    # Recursion lock
        splice(@{$x}, $i, 0, $val); # Recursion lock
        ++ $i;
    
    # Remove and add associations with other ends.
        
    $old->remove_navigationCallExp($self) if $old;
    $val->add_navigationCallExp($self)    if $val;

    }
  
  
  $self;
}


=head2 C<remove_qualifiers>

  $obj->remove_qualifiers(@val);

Removes the AssociationEnd C<qualifiers> values C<@val>.
Elements of C<@val> must of type L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub remove_qualifiers ($@)
{
  my ($self, @val) = @_;
  
    my $x = $self->{'qualifiers'} ||= [ ];
  
  for my $old ( @val ) {
    # Recursion lock
        my $i; # index of $old in @$x.
    next unless defined($i = __ummf_array_index($x, $old));
    
    my $val = $old;
      
    $self->__use('UMMF::UML::MetaModel::OCL::Expressions::OclExpression')->__typecheck($val, "UMMF::UML::MetaModel::OCL::Expressions::NavigationCallExp.qualifiers");

    # Recursion lock
        splice(@$x, $i, 1);     
    $val = undef;

    # Remove associations with other ends.

        
    $old->remove_navigationCallExp($self) if $old;
    $val->add_navigationCallExp($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<clear_qualifiers>

  $obj->clear_qualifiers;

Clears the AssociationEnd C<qualifiers> links to L<UMMF::UML::MetaModel::OCL::Expressions::OclExpression|UMMF::UML::MetaModel::OCL::Expressions::OclExpression>.
Returns C<$obj>.

=cut
sub clear_qualifiers ($) 
{
  my ($self) = @_;
  
    my $x = $self->{'qualifiers'} ||= [ ];
  
  my $val; # Place holder for other MACRO.
  
    $self->{'qualifiers'} = [ ];  # Recursion lock
  for my $old ( @$x ) { # Recursion lock
  
    # Remove associations with other ends.

        
    $old->remove_navigationCallExp($self) if $old;
    $val->add_navigationCallExp($self)    if $val;

  ;

  }
  
  $self;
}


=head2 C<count_qualifiers>

  $obj->count_qualifiers;

Returns the number of elements associated with C<qualifiers>.

=cut
sub count_qualifiers ($)
{
  my ($self) = @_;

  my $x = $self->{'qualifiers'};

    defined $x ? scalar @$x : 0;
  }







# End of Class NavigationCallExp


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
