#!/bin/sh
# $Id: build.sh,v 1.7 2004/04/22 03:06:27 kstephens Exp $
set -x

rm -f tmon.out
rm -rf gen
#export UMMF_PERL="${UMMF_PERL:-perl} -MDevel::Profiler"
#export UMMF_PERL="${UMMF_PERL:-perl} -d:DProf"
../../bin/ummf -e Perl -o gen Association_Storage_Example1.zuml

#export UMMF_PERL="${UMMF_PERL:-perl} -d" 
export PERL5LIB="$HOME/local/src/tangram/t2/perl/blib/lib:$PERL5LIB"

../../bin/ummf -I gen -m UMMF::UML::Export::Perl::Tangram deploy gen
