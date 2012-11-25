#!/bin/bash
for a in test/_tests/*/*.ast; do
	if [ -f "$a" ]; then
		echo $a
		b="${a%.ast}"
		java -classpath "lib/java-cup-11a-runtime.jar;./bin" coolir.Cgen $b.ast > $b.ir
	fi
done