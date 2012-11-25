#!/bin/bash
# ./run.sh advanced/lam
export nodosfilewarning=true
a="test/_tests/$1.ll"
if [ -f "$a" ]; then
	echo $a
	cp $a main.ll
	llvm-as lib/library.ll
	llvm-as main.ll
	llvm-link lib/library.bc main.bc > a.bc
	lli a.bc 
	rm -rf main.ll
fi
