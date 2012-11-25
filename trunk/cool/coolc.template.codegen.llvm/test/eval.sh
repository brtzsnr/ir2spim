#!/bin/bash

JCUP_JAR="java-cup-11a-runtime.jar"
TESTS_DIR="_tests"
SIMULATOR_DIR="_simulator"
LIB_DIR="lib"
SIMULATOR="lli"

export CLASSPATH="$CLASSPATH:$JCUP_JAR:bin/"

COMPILER="java coolir.Cgen"

function fail {
	printf "FAIL (%s)\n" "$1"
}

function pass {
	printf "PASS\n"
}

function print_errors {
	ERRFILE="$1"
	MESSAGE="$2"
	STDERR=$(cat $ERRFILE)	
	if [ -n "$STDERR" ]; then
		echo "-- $MESSAGE First lines of stderr below --"
		cat $ERRFILE | head -n 3
		echo "-----"
		echo
	fi
}

function test_correct {
	CL="$1"
	REF="$2"
	IN="$3"

	printf "%-50s" "Testing file $CL... "
	rm -f __stdout
	rm -f __stderr
	rm -f __stderr2
	
	IR=${CL/%ast/ll}
	$COMPILER $CL 1>&2 2>__stderr	
	
	if [ -f $IR ]; then
		llvm-as lib/library.ll
		llvm-as $IR
		BC=${IR/%ll/bc}
		llvm-link lib/library.bc $BC > a.bc
		if [ -f $IN ]; then
			$SIMULATOR a.bc 1>__stdout 2>__stderr2 < $IN
		else
			$SIMULATOR a.bc 1>__stdout 2>__stderr2
		fi
		
		if [ -z "$(diff -q __stdout $REF)" ]; then
			pass
		else
			fail "differences found"
			echo "-- First lines of the diff below --"
			diff -u __stdout "$REF" | head -n 10
			echo "-----"
			print_errors __stderr "Code generation:"
			print_errors __stderr2 "Runtime:"
		fi
	else
		fail "$IR was not properly generated."
		print_errors __stderr "Code generation:"
	fi
}

echo "******************************"
echo "******* Running tests ********"
echo "******************************"
echo 

for CL_SRC in $TESTS_DIR/*/*.ast; do
	test_correct $CL_SRC ${CL_SRC/%ast/ref} ${CL_SRC/%ast/in}
done

echo
echo
