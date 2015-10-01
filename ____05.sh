#!/bin/bash
#echo 192.168.1.{1..254} | xargs -n 1 P 0 ping -c 1 | grep "bytes from"

for (( i=0;i<=255;i++ ))
do
	echo "192.168.1.$i" | xargs -n 1 P 0 ping -c 1 | grep "bytes from"
done