#!/bin/sh
# $Id: build.sh,v 1.2 2004/08/01 06:09:31 kstephens Exp $
set -x
ummf="../../bin/ummf"

rm -f tmon.out
rm -rf gen
#export UMMF_PERL="${UMMF_PERL:-perl} -MDevel::Profiler"
#export UMMF_PERL="${UMMF_PERL:-perl} -d:DProf"
$ummf -e Perl -o gen OddNames.zuml

#export UMMF_PERL="${UMMF_PERL:-perl} -d"
PERL5LIB="`$ummf --perl5lib`"
export PERL5LIB="$HOME/local/src/tangram/t2/perl/blib/lib:$PERL5LIB"

perl -I gen -MClass_With_Spaces -MClass_with_dashes -e 'exit'

$ummf -e Java -o gen OddNames.zuml
javac -d gen `find gen -name '*.java'`


