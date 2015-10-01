#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "pass the string"
    exit 1
fi

if [[ "$1" == `echo "$1" | rev` ]]
then
    echo "is a palindrome"
else
    echo "is not a palindrome"
fi
