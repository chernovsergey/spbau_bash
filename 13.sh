#!/bin/bash
if (( $# != 1))
then
	echo "Usage: ./test01_13.sh [rss link]"
else
	wget $1 --quiet -O - | sed -n '/<item>/,/<\/item>/p' | grep "<title>" | sed -e "s/<title>\(.*\)<\/title>/\1/"
fi

