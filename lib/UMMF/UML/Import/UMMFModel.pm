package UMMF::UML::Import::UMMFModel;

use 5.6.1;
use strict;
use warnings;

our $AUTHOR = q{ kstephens@users.sourceforge.net 2003/04/06 };
our $VERSION = do { my @r = (q$Revision: 1.2 $ =~ /\d+/g); sprintf "%d." . "%03d" x $#r, @r };

=head1 NAME

UMMF::UML::Import::UMMFModel - Parses an ad-hoc Metamodel description.

=head1 SYNOPSIS

  use UMMF::UML::Import::UMMFModel;
  my $importer = UMMF::UML::Import::UMMFModel->new('factory' => $factory);
  my $importer->import($metametamodel_desc);

=head1 DESCRIPTION

This package is used to generate a UML model from the UML 1.5 metamodel.
This model can then be passed to UMMF::UML::Code::Perl or other code-generator
to generate code that represents the UML.

The MOF specifies interfaces to a MOF meta-meta-model with CORBA IDL.  Rather
that having to analyze the IDL to infer Associations; I first started with
this mini-language.  At some point however, maintaining the MetaMetaModel.spec
document will be more difficult as UML progesses.

=head1 USAGE

=head1 EXPORT

None exported.

=head1 AUTHOR

Kurt Stephens, kstephens@users.sourceforge.net 2003/04/06

=head1 SEE ALSO

L<UMMF::UML::MetaMetaModel::Factory|UMMF::UML::MetaMetaModel::Factory>

=head1 VERSION

$Revision: 1.2 $

=head1 METHODS

=cut


#######################################################################

use base qw(UMMF::UML::Import);

use Carp qw(confess);
use Parse::RecDescent;
use UMMF::UML::MetaMetaModel::Builder;
  
#######################################################################

sub initialize
{
  my ($self) = @_;

  $self->SUPER::initialize;

  $self->{'debugParser'} ||= 0;
  $self->{'warnings'} = 0;

  $self;
}

#######################################################################
#######################################################################
# Meta-metamodel grammar
#######################################################################
#######################################################################



my $gram =
q{
  unit : model end_of_unit
       | model_elements end_of_unit

  model : 'Model' string '{' 
	        { $::builder->begin_Model('name' => $item{string}) }
           model_elements
                { $::builder->end_Model }
          '}'

  model_elements : package_element(s)

  package_element : classifier
                 | usage
		 | generalization_block
		 | association
		 | package
		 | ';'
	         | <error>
	 
end_of_unit : /^\Z/


  package : 'Package' Type '{'
	        { $::builder->begin_Package($item{Type}) }
                package_element(s)
                { $::builder->end_Package }
              '}'

classifier : MetaClass ClassName ';'
        { 
	  $DB::single = 0; 
	  $::builder->end_Classifier($item{ClassName}, $item{MetaClass});
	}
      | MetaClass ClassName '{'
        { 
	  $DB::single = 0; 
	  $::builder->begin_Classifier($item{ClassName}, $item{MetaClass});
	}
          classifier_element(s)
        { $::builder->end_Classifier }
        '}'
      | MetaClass ClassName ':' Types ';'
        { 
	  $DB::single = 0; 
	  $::builder->end_Classifier($item{ClassName}, $item{MetaClass}, $item{Types});
	}
      | MetaClass ClassName ':' Types '{'
        { 
	  $DB::single = 0; 
	  $::builder->begin_Classifier($item{ClassName}, $item{MetaClass}, $item{Types});
	}
          classifier_element(s)
        { $::builder->end_Classifier }
        '}'


MetaClass : 'Class'
          | 'AssociationClass'
	  | 'Enumeration'
	  | 'Primitive'

ClassName : '/' Name '/' 
            {
              # Signifies isAbstract = 'true'  
              $return = "/$item{Name}/";
            }
	  | Name         
            { $return = $item{Name}; }

classifier_element : attribute 
                   | association
	           | literal
	           | classifier
	           | ';'
                   | <error>


literal : name ';'
          { $DB::single = 0; $::builder->add_EnumerationLiteral($item{name}) }

generalization_block : ':' Types '{'
                  { $::builder->begin_Generalization_parent($item{Types}) }
                     package_element(s)
                  { $::builder->end_Generalization_parent }
                '}'

usage : '::' usage_paths ';'
            { $::builder->add_Usage(@{$item[2]}) }


attribute : visibility attribute_decl stereotype_ ';'
            { 
	      my $x = {
		'name'         => $item{attribute_decl}->[0],
		'type'         => $item{attribute_decl}->[1],
		'multiplicity' => $item{attribute_decl}->[2],
                'initialValue' => $item{attribute_decl}->[3],
		'visibility'   => $item{visibility},
		'stereotype'   => $item{stereotype_},
	      };
	      $return = $::builder->add_Attribute($x);
	    }

attribute_decl : name ':' Type '[' multiplicity ']' '=' initialValue
            { $return = [ $item{name}, $item{Type}, $item{multiplicity}, $item{initialValue} ] } 
          | name ':' Type '[' multiplicity ']'
            { $return = [ $item{name}, $item{Type}, $item{multiplicity}, undef               ] }
          | name ':' Type '=' initialValue
            { $return = [ $item{name}, $item{Type}, undef,               $item{initialValue} ] }
          | name ':' Type
            { $return = [ $item{name}, $item{Type}, undef,               undef               ] }
          | name '[' multiplicity ']' ':' Type '=' initialValue
            { $return = [ $item{name}, $item{Type}, $item{multiplicity}, $item{initialValue} ] }

          | name '[' multiplicity ']' ':' Type
            { $return = [ $item{name}, $item{Type}, $item{multiplicity}, undef               ] }

initialValue_ : '=' initialValue
                { $return = $item{initialValue}; }
              |
                { $return = undef }

initialValue : literalValue
             

association : '@' association_
              { 
		my $x = {
		  'connection' => $item[2][0],
		  'name' => $item[2][1],
		  'associationClass' => $item[2][2],
		};
		$return = $::builder->add_Association($x);
	      }


association_ : '@' name association_ends
              { $return = [ $item{association_ends}, $item{name} ] }
            | '.' association_
              { 
		$item[2][2] = '.';
		$return = $item[2];
	      }
            | association_ends
              { $return = [ $item{association_ends} ] }


# There must be at least 2 assocation ends.
association_ends : association_end ',' association_end association_ends_3
                   { $return = [ $item[1], $item[3], @{$item[4]} ] }
                 | <error>

association_ends_3 : ';' { $return = [ ] }
                 | ',' association_end association_ends_3
                   { $return = [ $item[2], @{$item[3]} ] }
                 | <error>



association_end : navigable association_end__
                {
                  my $x = $item{association_end__};
                  $x->{'isNavigable'} = $item{navigable} || die(),
                  $return = $x;
                }
                | association_end__


association_end__ : aggregation visibility association_end_ option_
                  { 
		    my $x = {
		      'name'         => $item[3][0],
		      'participant'  => $item[3][1],
		      'multiplicity' => $item[3][2],
		      'visibility'   => $item{visibility},
		      'ordering'     => $item{option_}{'ordering'},
		      'aggregation'  => $item{aggregation},
		    };
		    # $::RD_TRACE = 1 if $x->{name} eq 'range' && $x->{'participant'} eq 'MultiplicityRange';
		    $return = $x;
		  }

association_end_ : end_name ':' Type multiplicity_ 
                   { $return = [ $item{end_name}, $item{Type}, $item{multiplicity_} ] }
                 | end_name ':' Type
                   { $return = [ $item{end_name}, $item{Type} ] }
                 | ':' Type multiplicity_ 
                   { $return = [ undef,           $item{Type}, $item{multiplicity_} ] }
                 | ':' Type 
                   { $return = [ undef,           $item{Type} ] }
                 | end_name multiplicity_
                   { $return = [ $item{end_name}, '.',         $item{multiplicity_} ] }
                 | end_name 
                   { $return = [ $item{end_name}, '.', ] }
                 | multiplicity 
                   { $return = [ undef,           '.',         $item{multiplicity} ] }
                 | <error>

end_name : '/' name 
           {
	      # What does '/' mean?  (as in p.2-113 '+/ownedElement')
	      #
	      # I think it means that the AssociationEnd is specified
	      # in a Generalization parent of the participant.
	      # 
	      # If so, then the Association can be dropped, because
	      # a Generalization implements it.
	      #
              # Actually, from reading the UML 2.0 Infrastructure,
              # it seems that '/' means isDerived is 'true'.
              #   -- kstephens@users.sourceforge.net 2003/10/17
              #
	     $return = "/$item{name}";
	     # print STDERR "parsed '$return'\n";
           } 
         | name     
           { $return = $item{name}; }


navigable : '->'         { $return = 'true' }


option_ : '{' options '}' { $return = $item{options} }
        |                 { $return = { } }


options : option
        | option ',' options { 
           my $a = $item{option};
           my $b = $item{options};

           # Append subsets;
           push(@{$a->{'subset'} ||= [ ]}, @{$b->{'subset'} || []});
           delete $b->{'subset'};

           # Override rest.
           %$a = ( %$a, %$b );

           $return = $a;
        }

option : 'ordered'     { $return = { 'ordering'       => 'ordered'       } }
       | 'unordered'   { $return = { 'ordering'       => 'unordered'     } }
       | 'subset' name { $return = { 'subset'         => [ $item{name} ] } }
       | 'union'       { $return = { 'isDerivedUnion' => 'true'          } }
       | 'composite'   { $return = { 'isComposite'    => 'true'          } }


multiplicity_ : multiplicity
              |  '[' multiplicity ']' { $return = $item[2]; }


multiplicity : multiplicity_ranges

multiplicity_ranges : multiplicity_range ',' multiplicity_ranges
                      { $return = $item[1] . ',' . $item[3] }
                    | multiplicity_range
 
multiplicity_range : integer dotdot star 
                     { $return = $item[1] . '..*' }
                   | integer dotdot integer
                     { $return = $item[1] . '..' . $item[3] }
                   | star
                   | integer

stereotype_ : stereotype stereotype_    { $return = [ $item[1], @{$item[2]} ] }
            | stereotype                { $return = [ $item[1] ] }
            |                           { $return = [ ] }


visibility : '+' { $return = 'public' }
           | '-' { $return = 'private' }
           | '#' { $return = 'protected'; }
           |     { $return = $::self->{'default'}{'visibility'} || 'private' }


aggregation : '<>'     { $return = 'aggregate' }
            | '<#>'    { $return = 'composite' }
            |          { $return = $::self->{'default'}{'aggregation'} || 'none' }


Types : Type ',' Types
         { $return = [ $item[1], @{$item[3]} ]; }
       | Type 
         { $return = [ $item[1] ]; }
       

 Type : name_path
 {
   my @x = split(/::/, $item[1]);
   for my $x ( @x ) {
     unless ( $x eq '..'|| $x eq '.' ) {
       $::self->warning("name element '$x' in '$item[1]' does not start with uppercase character")
       unless $x =~ /^[A-Z_]/;
     }
   }
   # $::RD_TRACE = 1 if $item[1] eq 'Namespace';
   $return = $item[1];
 }
     | string
{
  my $x = $item[1];
  # $::self->warning("using string '$x' as Type name");
  $return = $x;
}


 Name : name_elem
 { 
   $::self->warning("Name '$item[1]' does not start with uppercase character")
   unless $item[1] =~ /^[A-Z_]/;
   $return = $item[1];
 }
 | string


 name : name_elem
 {
   $::self->warning("name '$item[1]' does not start with lowercase character")
   unless $item[1] =~ /^[a-z_]/;
   $return = $item[1];
 } 
 | string


usage_paths : usage_path ',' usage_paths
         { $return = [ $item[1], @{$item[3]} ]; }
       | usage_path
         { $return = [ $item[1] ]; }
       | <error>

 name_path : /(([a-z_][a-z_0-9]*|\.\.|\.)(::([a-z_][a-z_0-9]*|\.\.|\.))*)/i
        { $return = $1; } 

 usage_path : /((([a-z_][a-z_0-9]*|\.\.|\.)::)*([a-z_][a-z_0-9]*|\*))/i
        { $return = $1; } 

 name_elem : /([a-z_][a-z_0-9]*)/i
             { $return = $1; }

 literalValue : string
              { $return = '"' . $item{string} . '"'; }
              | real
              | integer
              | name
              { $return = '"' . $item{name} . '"'; }

 string : /"([^\"]*)"/  { $return = $1; } 

 real : /([-+]?([0-9]+\.|[0-9]*\.[0-9]+)([eEgGfF][-+]?[0-9]+)?)/
{ $return = $1; }

integer : /([-+]?[0-9]+)/
{ $return = $1; }

 star : /\*/
{ $return = '*'; }

dotdot : /\.\./
{ $return = '..' }

dot : /\./
{ $return = '.' }

stereotype : /\<\<\w+\>\>/

};

#######################################################################


my $parser;
sub parser
{
  my ($self) = @_;
  
  return $parser if $parser;
  
  $self->message('Generating grammar:');

  local $::RD_ERRORS = 1;
  local $::RD_WARN = 1;
  local $::RD_HINT = 1;
  #local $::RD_TRACE = $self->{'debugParser'} > 2;

  # $DB::single = 1;

  $parser = new Parse::RecDescent($gram) ||
  confess(code_error($@, $gram)) unless $parser;

  $self->message('Generating grammar: DONE');

  $parser;
}


#######################################################################


sub import_input
{
  my ($self, @args) = @_;

  # Get a ummfmodel file parser.
  my $parser = $self->parser;

  my $input = join("\n", @args);
  
  use UMMF;
  use Template;

  # Create a Template to handle conditionalities and includes
  $self->message('Parsing template:');

  my $template = {
	'INCLUDE_PATH' => [ UMMF->resource_path('model') ],
	'INTERPOLATE' => 1,
	'POST_CHOMP' => 1,
	'EVAL_PERL' => 1,
	'DEBUG' => 1,
        'ABSOLUTE' => 1,
	'RELATIVE' => 1,

#	'COMPILE_EXT'   => '.ttc',
#	'COMPILE_DIR'   => "/tmp/$ENV{USER}.ttc",
       };

  if ( $template->{'COMPILE_DIR'} ) {
    use File::Path;
    mkpath([ $template->{'COMPILE_DIR'} ], 1); 
  }  

  #print STDERR "UMMFModel: INCLUDE_PATH = @{$template->{INCLUDE_PATH}}\n";
  $Template::DEBUG = 1;
  # $DB::single = 1;
  $template = Template->new($template) || confess($Template::ERROR);

  # Set up template vars.
  #print STDERR 'input = ', $input, "\n";
  {
    my $vars = $self;
    my $output = '';
    # $DB::single = 1;
    $template->process(\$input, $vars, \$output);
    confess($Template::ERROR) if $Template::ERROR;
    $input = $output;
  }
  #print STDERR 'output = ', $input, "\n";

  $self->message('Parsing template: DONE');

  $self->message('Parsing model:');

  # Strip comments.
  $input =~ s@/\*(.*?)\*/@__fix_newlines_in_comment($1)@sge;

  # UGH!
  # $input =~ s@\<\>|\<\#\>|\{ordered\}@@sg;
  #$input =~ s@/([a-z]+)@$1@sgi;
  
  # print STDERR $input;

  # Begin parsing.
  local $::RD_ERRORS = 1;
  local $::RD_WARN = 1;
  local $::RD_HINT = 1;
  # local $::RD_TRACE = $self->{'debugParser'};

  my $builder = $self->{'builder'} || UMMF::UML::MetaMetaModel::Builder->new('factory' => $self->factory);

  local $::self = $self;
  local $::builder = $builder;
  local $::cls;
  
  ## $builder->begin_Model();

  # $DB::single = 1;
  $parser->model($input);

  $self->message('Parsing model: DONE');

  ## $builder->end_Model();

  #$DB::single = 1;

  my $model = $builder->model_top_level;

  $model;
}


sub __fix_newlines_in_comment
{
  my ($x) = @_;

  #print STDERR "COMMENT: '$x'\n";

  my $nl = 0;
  $x =~ s/\n/++ $nl/sge;
  $x = "\n" x $nl;

  #$DB::single = 1;

  $x;
}


#######################################################################


sub warning
{
  my ($self, @args) = @_;

  my $x = join('', @args);

  unless ( $self->{'.warning'}{$x} ++ ) {
    $self->message('Warning: ', $x);
    $self->{'warnings'} ++;
  }

  $self;
}


sub verbose
{
  my ($self, @args) = @_;

  $self->message(@args) if $self->{'verbose'};
}


sub message
{
  my ($self, @args) = @_;

  print STDERR 'UMMFModel: ', @args, "\n";

  $self;
}


sub code_error
{
  my ($error, $code) = @_;
  $error ||= $@;

  my $line = 0;
  my $c = $code;
  $c = join("\n",
	    map(sprintf("%-4d ", ++ $line) . $_,
		split("\n", $code, 99999),
		),
	    '',
	    );
  my $sep = '#-' x 10;
  $c = "$sep\n$c$sep\n";
  die "$c\nin code above:\n$error";
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

