#!/bin/bash
if [[ $# -ne 1 ]]
then
	echo "usage: ./12.sh <filename>"
fi

IFS=$(echo -e '\n\r')
text=`cat "$1"` 
for row in $text
do
	for idx in `seq 0 $(( ${#row}-1 ))` 
	do
		sym=`printf '%d' \'${row:idx:1}`
		sym=$(( sym+1 ))
		printf "\x$(printf %x $sym)"
	done
done
echo
