#!/bin/bash
wget https://github.com/OpenCorpora/opencorpora/archive/master.zip
unzip master.zip
find opencorpora-master/ | grep ".php$" | grep -H -R "token" | cut -d: -f1 | uniq | while read file; do
	sed -i "1 i// This file contains 'token'" "$file"
done