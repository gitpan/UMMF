package UMMF::UML::MetaModel1;

use 5.6.1;
use strict;
use warnings;

our $AUTHOR = q{ kstephens@users.sourceforge.net 2003/05/03 };
our $VERSION = do { my @r = (q$Revision: 1.14 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

=head1 NAME

UMMF::UML::MetaModel1 - Bootstrapping implementation of UML meta-model M1.

=head1 SYNOPSIS

  use UMMF::UML::MetaModel1;

  my $f = UMMF::UML::MetaModel->factory;
  my $metamodel = UMMF::UML::MetaModel1->model;
  UMMF::UML::Export::XMI->new()->export_Model($metamodel);

=head1 DESCRIPTION


=head1 USAGE

=head1 PATTERNS

=head1 EXPORT

None exported.

=head1 AUTHOR

Kurt Stephens, kstephens@users.sourceforge.net 2003/05/03

=head1 SEE ALSO

L<UMMF::UML::MetaMetaModel|UMMF::UML::MetaMetaModel>

=head1 VERSION

$Revision: 1.14 $

=head1 METHODS

=cut

#######################################################################

use UMMF::UML::MetaMetaModel::Util qw(:all);
use Carp qw(confess);

#######################################################################


sub metamodel_spec
{
  my ($self, %opts) = @_;

  my $version = $opts{'version'} || confess("No UML version specified");
  qq{[% PROCESS "UML-${version}.ummfmodel" %]};
}

#######################################################################

our $uml_version ||= '1.5';

my %model;
sub model
{
  my ($self, %opts) = @_;

  my $version = $opts{'version'} ||= $uml_version;

  unless ( $model{$version} ) {
    my $desc = $opts{'desc'};

    $desc ||= $self->metamodel_spec(%opts);
    # $DB::single = 1;
    
    use UMMF::UML::Import::UMMFModel;
      
    # $DB::single = 1;
    my $factory = $opts{'factory'};
    delete $opts{'factory'};
    $factory = $self->factory unless $factory;

    # $DB::single = 1;

    my $importer = new UMMF::UML::Import::UMMFModel(
						    'factory' => $factory,
						    'version' => $version,
						   );

    $model{$version} = $importer->import_input($desc);

    if ( 0 ) {
      #local $UMMF::UML::MetaMetaModel::Util::namespace_trace = 1;
      my (@ac) = Namespace_ownedElement_match($model{$version}, 'isaAssociationClass', 1);
      $DB::single = 1;
      
      print STDERR "AC: ", join(', ', map($_->name, @ac)), "\n";
    }

    # $DB::single = 1;
  }

  $model{$version};
}


my $factory;
sub factory
{
  my ($self) = @_;

  unless ( $factory ) {
    $factory = 'UMMF::UML::MetaMetaModel::FactoryBoot';
    # confess("factory not specified") unless $factory;
    unless ( ref($factory) ) {
      eval "use $factory;"; die $@ if $@;
      $factory = $factory->new('classMap' => $factory);
    }
  }

  $factory;
}


#######################################################################


sub exporter
{
  my ($self, %opts) = @_;

  #####################################################################
  # Generate metamodel code directely into Perl or Java or ...
  #

  $opts{'version'} ||= $uml_version;

  
  #$DB::single = 1;
  #use UMMF::UML::Code;

  my $exporter = $opts{'exporter'} || 'UMMF::UML::Export::Perl';
  delete $opts{'exporter'};

  if ( ! ref($exporter) ) {
    eval "use $exporter"; die $@ if $@;
    $exporter = $exporter->new
    (
     'output' => 'EVAL',
     %opts,
    );
  }

  $exporter;
}


sub export_Model
{
  my ($self, %opts) = @_;

  $opts{'version'} ||= $uml_version;

  my $model = $opts{'model'};
  delete $opts{'model'};

  confess("model not specified") unless $model;
  unless ( ref($model) ) {
    eval "use $model;"; die if $@;
    $model = $model->model;
  }

  $self->exporter(%opts)->export_Model($model);
}



#######################################################################


1;

#######################################################################


### Keep these comments at end of file: kstephens@users.sourceforge.net 2003/04/06 ###
### Local Variables: ###
### mode:perl ###
### perl-indent-level:2 ###
### perl-continued-statement-offset:0 ###
### perl-brace-offset:0 ###
### perl-label-offset:0 ###
### End: ###

