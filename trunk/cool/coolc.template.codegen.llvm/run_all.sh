#!/bin/bash
# ./run.sh lam
export nodosfilewarning=true
for a in test/_tests/*/*.ll ; do
if [ -f "$a" ]; then
	echo $a
	cp $a main.ll
	llvm-as lib/library.ll
	llvm-as main.ll
	llvm-link lib/library.bc main.bc > a.bc

	# Reference output
	ref=${a%.ll}.ref
	
	# Test input
	in=${a%.ll}.in
	[ -f "$in" ] || in=/dev/null
	
	lli a.bc < "$in" > out.txt
	#One additional newline
	echo >> out.txt
	diff out.txt $ref && echo PASSED || echo FAILED
	echo ===========
	rm -rf main.ll out.txt
fi
done