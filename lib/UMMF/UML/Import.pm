package UMMF::UML::Import;

use 5.6.1;
use strict;

our $AUTHOR = q{ ks.perl@kurtstephens.com 2003/04/15 };
our $VERSION = do { my @r = (q$Revision: 1.7 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

=head1 NAME

UMMF::UML::Import - Base class for (meta-)model importers.

=head1 SYNOPSIS

  use base qw(UMMF::UML::Import);

=head1 DESCRIPTION

This base class provides support and interfaces for specific importers, like UMMF::UML::Import::XML and UMMF::UML::Import::MetaMetaModel.

=head1 USAGE

=head1 EXPORT

None exported.

=head1 AUTHOR

Kurt Stephens, ks.perl@kurtstephens.com 2003/04/15

=head1 SEE ALSO

L<UMMF::UML::XMI|UMMF::UML::XMI>

=head1 VERSION

$Revision: 1.7 $

=head1 METHODS

=cut


#######################################################################

use base qw(UMMF::UML::MetaMetaModel::Object);

use Carp qw(confess);

#######################################################################

sub initialize
{
  my ($self) = @_;
  
  # $DB::single = 1;

  confess("factory not specified") unless $self->{'factory'};
  
  $self->SUPER::initialize;
}


#######################################################################

sub import_input_string
{
  confess("import_input_string: not implemented");
}

#######################################################################

sub import_input
{
  my ($self, $input) = @_;

  # $DB::single = 1;

  if ( UNIVERSAL::isa($input, 'IO::Handle') ) {
    $input = join('', <$input>);
  }

  $_[1] = undef; # Help Devel::StackTrace.

  $self->import_input_string($input);
}


#######################################################################

1;

#######################################################################


### Keep these comments at end of file: ks.perl@kurtstephens.com 2003/04/06 ###
### Local Variables: ###
### mode:perl ###
### perl-indent-level:2 ###
### perl-continued-statement-offset:0 ###
### perl-brace-offset:0 ###
### perl-label-offset:0 ###
### End: ###

