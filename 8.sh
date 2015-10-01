#!/bin/bash
if [[ "$1" == "-?" ]] || [[ "$1" == "-help" ]];
then
	echo "usage: ./test01_8 -[?|help] or ./test01_8 [-v] \"mask\""
	exit
fi
if [[ "$1" == "-v" ]]
then
	quiet=1
	shift
else
	quiet=0
fi
for file in $@
do
	if (( quiet == 1))
	then
		rm $file
	else
		rm -i $file
	fi
done
