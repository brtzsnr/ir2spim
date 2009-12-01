#! /bin/bash
# Args: original reference student

original=$1
reference=$2
student=$3

# rulam original
./simulator.py $original > $original.temp 2> /dev/null
if [ $? -ne 0 ]; then
	echo '(simulator) original ir failed'
	exit 1
fi

# rulam student
./simulator.py $student > $student.temp 2> /dev/null
if [ $? -ne 0 ]; then
	echo '(simulator) student ir failed'
	exit 1
fi

# original vs student
diff -q $original.temp $student.temp &> /dev/null
if [ $? -ne 0 ]; then
	echo '(simulator) original != student'
	exit 1
fi

echo -n 'output ok, '

# rulam reference
./simulator.py $reference > $reference.temp 2> /dev/null
if [ $? -ne 0 ]; then
	echo '(simulator) reference ir failed'
	exit 1
fi

# original vs reference
diff -q $original.temp $reference.temp &> /dev/null
if [ $? -ne 0 ]; then
	echo '(output) original != reference'
	exit 1
fi

echo -n 'reference ok, '

# compara binarele

# compileaza student
./dump.py $student > $student.temp 2> /dev/null
if [ $? -ne 0 ]; then
	echo '(dump) student failed'
	exit 1
fi

# compileaza reference
./dump.py $reference > $reference.temp 2> /dev/null
if [ $? -ne 0 ]; then
	echo '(dump) reference failed'
	exit 1
fi

# fisierele obiect trebuie sa fie identice
diff -q $reference.temp $student.temp &> /dev/null
if [ $? -ne 0 ]; then
	echo '(dump) original != student'
	exit 1
fi

echo -n 'compile ok, '
echo 'all ok'
