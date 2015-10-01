#!/bin/bash

# for all downloaded files
mkdir -p gnuplot

# for sorted files
mkdir -p gnuplot/sorted

wget -H -r https://commons.wikimedia.org/wiki/Category:Gnuplot_diagrams --directory-prefix=./gnuplot

# fetch all formats
fformat=$(find ./gnuplot -type f -name '*.*' | sed 's@.*\.@@' | uniq)

# for each file move it to the dir with correspondent extension
echo "$fformat" | while read fmt
do
	mkdir -p ./gnuplot/sorted/$fmt
	find ./gnuplot/ -type f -name "*.$fmt" | while read file
	do
		mv -f -t  ./gnuplot/sorted/"$fmt" -- "$file"
	done
done