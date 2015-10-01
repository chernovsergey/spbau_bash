#!/bin/bash
if [[ $# -ne 3 ]]
then
	echo "usage: ./10.sh d m y"
	exit 1
fi

output=1
target_day=`echo $1 | sed -E -e "s/^0//"`
text=`cal $2 $3 | grep -E -e "\b${target_day}\b" | tr ' ' '\n' | grep -E -e '^.+$'`
for i in $text
do
    if [[ $i == $target_day ]]
    then
	case $output in
		1) echo Monday ;;
		2) echo Tuesday ;;
		3) echo Wednesday ;;
		4) echo Thursday ;;
		5) echo	Friday ;;
		6) echo Saturday ;;
		7) echo Sunday ;;
		*) exit 1
	esac
    fi
    output=$((output + 1))
done