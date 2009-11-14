#! /bin/bash

if [ -z $1 ] ; then
	echo "Pentru ce tema vrei sa generez pagina de teste?"
	exit 0
else
	TEMA=$1
fi

echo Generez pagina de teste pentru tema $TEMA

OUTPUT=t$TEMA.yanl

git pull
rm -f $OUTPUT
touch $OUTPUT

echo Fisierul de iesiere este $OUTPUT

echo "## Teste pentru [[tema"$TEMA"|enuntT"$TEMA"]]" >> $OUTPUT
echo "* Aceasta pagina a fost generata automat. **Nu o modificati!!!**" >> $OUTPUT
echo "* Teste" >> $OUTPUT

echo Am scris antetul

for i in `find t$TEMA/ -name '*.yanl' | sort`; do
	dos2unix --d2u $i

	fullname=${i%%.yanl}
	name=${fullname#*/}
	echo " * [\`"$name"\`](/pt/ikiwiki.cgi?page="`echo $fullname | tr '_' ' '`"&do=edit)" >> $OUTPUT
done

echo Am scris testele

git add $OUTPUT && git commit -a -m "Teste tema "$TEMA". Pagina generata automat." && git push

