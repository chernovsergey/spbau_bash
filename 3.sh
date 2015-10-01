#!/bin/bash
if [[ $# -ne 1 ]]
then
	echo "usage: ./3.sh <filename>"
	exit 1
fi

cat "$1" | grep -oP "\+?\d?\s?\(?(\d{3})\)?([\d-\s]+)"