package UMMF::UML::Export::Perl;

use 5.6.1;
use strict;

our $AUTHOR = q{ kstephens@sourceforge.net 2003/05/03 };
our $VERSION = do { my @r = (q$Revision: 1.17 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

=head1 NAME

UMMF::UML::Export::Perl - A code generator for Perl.

=head1 SYNOPSIS

  use UMMF::UML::Export::Perl;

  my $exporter = UMMF::UML::Export::Perl->new('output' => *STDOUT);
  my $exporter->export_Model($model);

=head1 DESCRIPTION

This package allow UML models to be represented as Perl code.

=head1 USAGE

=head1 EXPORT

None exported.

=head1 TO DO

=over 4

=item Implement AssociationClass

=back

=head1 AUTHOR

Kurt Stephens, kstephens@sourceforge.net 2003/05/03

=head1 SEE ALSO

L<UMMF::UML::MetaModel|UMMF::UML::MetaModel>

=head1 VERSION

$Revision: 1.17 $

=head1 METHODS

=cut

#######################################################################

use base qw(UMMF::UML::Export::Template);

#######################################################################

#use UMMF::UML::MetaMetaModel::Util qw(:all);

#######################################################################

sub export_kind { 'Perl' }

sub package_sep { '::' }
sub package_file_name_suffix { '.pm' }

sub comment_char { '# '; }

sub package_name_filter
{
  my ($self, $obj, $name) = @_;

  if ( $obj->isaPackage ) {
    $name = ucfirst($name);
  }

  $name;
}


#######################################################################

sub model_filters
{
  qw(
     AssocClassLinks
     AssociationNames
     );
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

