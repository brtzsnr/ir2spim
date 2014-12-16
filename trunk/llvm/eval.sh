#!/bin/bash

TESTS="_tests"

function fail {
	printf "FAIL (%s)\n" "$1"
}

function pass {
	printf "PASS\n"
}

run() {
	FILENAME=`basename $1`
	EXECNAME=${FILENAME%.*}
	LLNAME=${EXECNAME}.ll
	LLOPTNAME=${EXECNAME}_opt.ll
	SNAME=${EXECNAME}_opt.s

	clang++ -S -O0 -emit-llvm $1
	opt -mem2reg $LLNAME -S -o $LLNAME
	opt -load llvm.nullcheckdce.build/NullCheckDCEPass/libNullCheckDCEPass.so -nullcheckdce $LLNAME -S -o $LLOPTNAME
	llc $LLOPTNAME -filetype=asm
	g++ $SNAME -o $EXECNAME
	if [ -x $EXECNAME ]; then
		./$EXECNAME
	fi
	rm $EXECNAME
}

test() {
	echo === $1 ===
	TNAME=`basename $1`

	run $1 > $TNAME.out 2> $TNAME.err

	if [ -z "$( diff -q -w $TNAME.out ${1%cpp}ref )" ]; then
		pass
	else
		fail "Different program output. First lines of diff below"
		echo "-----"
		diff $TNAME.out ${1%cpp}ref | head -n 30
		echo "-----"
		echo "-- Error log: --"
		cat $TNAME.err
		echo "-----"
		echo
	fi
}

echo "*********************************"
echo "********* Running tests *********"
echo "*********************************"

for t in $TESTS/*.cpp
do
	test $t
done

rm *.err *.out *.ll *.s