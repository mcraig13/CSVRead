#!/usr/bin/bash
dPath=$(cut -d , -f1 testFind.csv | sed -n -e 1p)

cd "$dPath"
columnNum=1
lineNum=3
name="start"

while [[ -n $name ]]; do
	name=$(cut -d , -f$columnNum testFind.csv | sed -n -e "$lineNum"p)
	printf "$name\n"
	lineNum=$((lineNum+1))
done
read -p "Finished..."