package UMMF::UML::Export::YAML;

use 5.6.1;
use strict;

our $AUTHOR = q{ kstephens@sourceforge.net 2003/08/18 };
our $VERSION = do { my @r = (q$Revision: 1.2 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

=head1 NAME

UMMF::UML::Export::YAML - A code generator for YAML.

=head1 SYNOPSIS

  my $d = UMMF::UML::Export::YAML->new('output' => *STDOUT);
  my $d->export_Model($model);

OR
  
  ummf -e YAML your_uml.xmi

=head1 DESCRIPTION

This package allow UML models to be represented as YAML output.

=head1 USAGE

=head1 EXPORT

None exported.

=head1 AUTHOR

Kurt Stephens, kstephens@sourceforge.net 2003/09/07

=head1 SEE ALSO

L<YAML|YAML>, L<UMMF::UML::Export::DataDumper|UMMF::UML::Export::DataDumper>

=head1 VERSION

$Revision: 1.2 $

=head1 METHODS

=cut

#######################################################################

use base qw(UMMF::UML::Export);

use UMMF::UML::MetaMetaModel::Util qw(:all);
use YAML;

#######################################################################


sub initialize
{
  my ($self) = @_;

  # $DB::single = 1;

  $self->SUPER::initialize;

  $self;
}


#######################################################################

sub export_Model
{
  my ($self, $model) = @_;
  
  $DB::single = 1;

  $self->{'output'}
    ->print(
	    YAML->new()
	    ->Indent(1)
	    ->dump($model),
	   );

  $self;
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

