package UMMF::UML::Export::XMI;

use 5.6.1;
use strict;

our $AUTHOR = q{ kstephens@sourceforge.net 2003/04/15 };
our $VERSION = do { my @r = (q$Revision: 1.10 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

=head1 NAME

UMMF::UML::Export::XMI - A code generator for XMI.

=head1 SYNOPSIS

  use base qw(UMMF::UML::Export::XMI);

  my $coder = UMMF::UML::Export::XMI->new('output' => *STDOUT);
  my $coder->export_Model($model);

=head1 DESCRIPTION

This package allow UML models to be represented as XMI.
Actually anything that can supply its own meta-model.

=head1 USAGE

=head1 EXPORT

None exported.

=head1 AUTHOR

Kurt Stephens, kstephens@sourceforge.net 2003/04/15

=head1 SEE ALSO

L<UMMF::UML::MetaModel|UMMF::UML::MetaModel>

=head1 VERSION

$Revision: 1.10 $

=head1 METHODS

=cut

#######################################################################

use base qw(UMMF::UML::Export);

use UMMF::UML::MetaMetaModel::Util qw(:all);
use XML::Writer;

#######################################################################


sub initialize
{
  my ($self) = @_;

  # $DB::single = 1;

  $self->SUPER::initialize;

  $self->{'xmi_version'} = '1.2';
  $self->{'xml'} = XML::Writer->new('OUTPUT' => $self->{'output'},
				    #'NEWLINES' => 1,
				    'DATA_INDENT' => 1,
				    'DATA_MODE'=> 1,
				    );

  $self->{'id'} = '1';
  $self->{'id_prefix'} ||= 'xmi.';
  $self->{'objid'} ||= { };
  $self->{'idobj'} ||= { };

  $self;
}


#######################################################################

sub export_Model
{
  my ($self, $model) = @_;
  
  $DB::single = 1;

  my $x = $self->{'xml'};

  $self->{'nstag'} ||= 'UML';
  $self->{'nsdef'} ||= 'org.omg.xmi.namespace.UML';

  my $xml_nstag = $self->{'nstag'};
  my $xml_nsdef = $self->{'nsdef'};

  $x->startTag('XMI',
	       'xmi.version' => $self->{'xmi_version'},
	       "xmlns:$xml_nstag" => $xml_nsdef,
	       'timestamp' => 'Sat Apr 12 12:21:57 EDT 2003',
	       );


  $x->startTag('XMI.header');
  $x->startTag('XMI.documentation');
  $x->endTag('XMI.documentation');
  $x->endTag('XMI.header');

  $x->startTag('XMI.content');

  $self->export_content($model);

  $x->endTag('XMI.content');

  $x->endTag('XMI');

  $self->{'idobj'} = undef;
  $self->{'objid'} = undef;

  $self;
}


#######################################################################


sub export_content
{
  my ($self, $obj) = @_;

  return $self unless defined $obj;

  my $ref = ref($obj);

  if ( $ref eq 'ARRAY' ) {
    grep($self->export_content($_), @$obj);
    return $self;
  }

  my $x = $self->{'xml'};

  unless ( $ref ) {
    $x->characters($obj);
    return $self;
  }


  #######################################################
  # Get meta-model Classifier for XMI?
  #
  
  # $DB::single = 1;

  my $cls;
  if ( UNIVERSAL::can($obj, '__classifier') ) {
    # $DB::single = 1;
    $cls = $obj->__classifier;
  } else {
    $cls = $self->{'classifier'}{$ref};
  }

  $DB::single = 1 unless ref($cls) =~ /::/;


  #######################################################
  # Compute top-level tag name.
  #

  $DB::single = 1 if ref($cls) eq 'ARRAY' || ref($self) eq 'ARRAY';

  my $xml_ns = $cls->{'nstag'} || $self->{'nstag'};
  $xml_ns .= ':' if $xml_ns;

  my $tag = $cls->{'tag'};
  unless ( $tag ) {
    $tag = $ref;
    $tag =~ s/^.*:://;
  }

  $tag = "$xml_ns$tag";

  #######################################################
  # Look for existing id?
  #

  my $id;

  # Object already visited?
  my $objid = $self->{'objid'};
  if ( ($id = $objid->{$obj}) ) {
    # Do an id.ref tag.
    $x->emptyTag($tag, 'xmi.idref' => $id);
  } else {
    # Generate new id.
    my $idobj = $self->{'idobj'};
    do {
      $id = $self->{'id'} ++;
      $id = $self->{'id_prefix'} . $id;
    } while ( $idobj->{$id} );

    # Remember relationship.
    $objid->{$obj} = $id;
    $idobj->{$id} = $obj;

    # Generate a list of XML attributes and XML (sub)elements.
    my @attr = ('xmi.id' => $id);

    # Interpret the metamodel to determine if Attributes
    # should be XML Elements or XML Attributes.
    #
    $self->export_interpret_metamodel($obj, $cls, 'attr', \@attr);
    
    $x->startTag($tag, @attr);
    
    $self->export_interpret_metamodel($obj, $cls, 'elem');
    
    $x->endTag($tag);
  }

  $self;
}


#######################################################################


sub export_interpret_metamodel
{
  my ($self, $obj, $cls, $mode, $coll, $visited) = @_;

  # Elide common parent generalizations.
  $visited ||= { };
  if ( ! $visited->{$cls} ) {
    $visited->{$cls} = 1;

    # print STDERR "\ncls = ". $cls->name, ", mode = $mode\n";
    # $DB::single = 1;
    # $DB::single = 1 unless ref $cls;

    # Visit Generalization parents.
    for my $parent ( GeneralizableElement_generalization_parent($cls) ) {
      $DB::single = 1 unless ( $parent && ref $parent);
      $self->export_interpret_metamodel($obj, $parent, $mode, $coll, $visited);
    }

    my @elem;

    # Do the Attributes first.
    for my $attr ( grep($_->isaAttribute, $cls->feature) ) {
      # Need some way to determine if the attribute value is a
      # a primitive, without relying or ref()ness.
      my $op = $attr->name;
      my $value = $obj->$op;

      # If the value is a ref,
      # it must be primitive and can go into a XML attribute.
      # Otherwise, it's either a container or a reference
      # to an object.
      # It would be best if the metamodel could help with this decision,
      # since the object's hash fields may not be initialized,
      # but then that would be my fault.
      #
      if ( ref($value) ) {
	if ( $mode eq 'elem' ) {
	  push(@elem, [ $op, $value ]);
	}
      } else {
	if ( $mode eq 'attr' ) {
	  # Attempt to revert primitive objects back to thier real representation.
	  # e.g. UML meta-model Boolean!!!
	  push(@$coll, $op, $value)
	}
      }
    }

    # Do the Associations.
    # Associations must be XML elements because they are either references
    # or collections of references.
    if ( $mode eq 'elem' ) {
      for my $assoc_end ( $cls->association ) {
	for my $other_end ( AssociationEnd_opposite($assoc_end) ) {
	  my $o_name = $other_end->name;
	  # Only named ends can be visible.
	  if ( $o_name && $o_name !~ /_$/ ) {
	    my $value = $obj->$o_name;
	    push(@elem, [ $o_name, $value ]);
	  }
	}
      }

      if ( @elem ) {
	# Well we can't expect our caller to do everything.
	my $x = $self->{'xml'};
	
	my $xml_ns = $cls->{'nstag'} || $self->{'nstag'};
	$xml_ns .= ':' if $xml_ns;
	
	for my $elem ( @elem ) {
	  my $tag = $xml_ns . $cls->name . '.' . $elem->[0];
	  
	  my $v = $elem->[1];
	  if ( defined $v ) {
	    next if ref($v) eq 'ARRAY' && ! @$v;

	    $x->startTag($tag);
	    
	    $self->export_content($v);
	    
	    $x->endTag($tag);
	  }
	}
      }
    }
  }

  return $self;
}


#######################################################################

1;

#######################################################################


### Keep these comments at end of file: kstephens@sourceforge.net 2003/04/06 ###
### Local Variables: ###
### mode:perl ###
### perl-indent-level:2 ###
### perl-continued-statement-offset:0 ###
### perl-brace-offset:0 ###
### perl-label-offset:0 ###
### End: ###

