#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "wrong options! pass the textfile with song names!"
    exit
fi

cat "$1" | grep -P "\b([^\.])+\.(mp3|wav|ogg)$"
