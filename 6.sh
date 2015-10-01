#!/bin/bash
ARGLINE="$1"
ARGCOPY=$ARGLINE
declare -A map
for LINE in $ARGLINE
do
	if (( ${map["$LINE"]-0} == 0 ))
	then
		occurences=`echo "$ARGLINE" | grep -o "$LINE" | wc -w`
		if (( $occurences > 1))
		then
			ARGCOPY=`echo "$ARGCOPY" | sed "s/\b$LINE\b/\*$LINE\*/2g"`
			echo "$ARGCOPY"
		fi
	fi
	map["$LINE"]=1
done
