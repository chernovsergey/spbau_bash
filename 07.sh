#!/bin/bash
author=`head -1 $1`
count=`head -2 $1 | tail -1`
number=$(($RANDOM%$count))
citeflag='* '$number
printflag=0
while read LINE; do
	if ((printflag==1))
	then
		if [[ ${LINE:0:1} != "*" ]]
		then
			echo "$LINE"
		else
			printflag=0
		fi
	fi
    	if [[ $LINE == $citeflag ]]
	then
		printflag=1
	fi
done < "$1"
echo "$author"
