#! /bin/bash
#
# author: Alexandru Mosoi (brtzsnr@gmail.com)
#
# primeste ca argument un program (script) care primeste numele testului 'testname'
# citeste programul din 'testname.yanl' si scrie codul aroma in 'testname.aroma'
#
# n-am rulat scriptul pe un program adevarat (pentru ca nu am), asa ca daca intampinati
# probleme: PING ME
#
# testele trebuie sa se gaseasca in directorul curent si au forma
#   writeln.yanl programul
#   writeln.in   inputul
#   writeln.ok   iesirea corecta
#
# alte fisiere
#   writeln.out  iesirea testului
#   writeln.log  eroare simulatorului

sim_aroma=../../src/AROMASimulator/sim_aroma

if [ -z $1 ]; then
	echo "Folosire: '$0' executabil_compilator [nume_test]"
	exit 1
fi

if ! [ -x $1 ]; then
	echo "Nu pot sa rulez '$1'."
	exit 1
fi

if ! [ -x $sim_aroma ]; then
	echo "Nu pot sa rulez simulatorul '$sim_aroma'."
	exit 1
fi

tests='*.yanl'
if ! [ -z $2 ]; then
	tests="$2.yanl"
fi

for i in `find . -name $tests`; do
	testname=${i%%.yanl}

	printf "verficarea $testname... "

	# producem codul aroma din program
	$1 $testname

	# rulam codul si producem iesirea
	../../src/AROMASimulator/sim_aroma $testname.aroma < $testname.in > $testname.out 2> $testname.log
	if [ 0 -ne $? ]; then
		echo "simulatorul a esuat. verifica fisierul '$testname.log' pentru detalii."
		exit 1
	fi

	# verificam iesirea
	diff -q $testname.out $testname.ok &> /dev/null
	if [ 0 -ne $? ]; then
		echo "incorect, iesirea difera."
		exit 1
	fi

	echo "corect"
done

exit 0

