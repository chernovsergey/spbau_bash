#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "wrong options! pass the filename where #RGB's are written"
    exit
fi

cat "$1" | grep  -ioP "#([0-9A-Fa-f]){2}\1\1"