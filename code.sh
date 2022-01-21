#!/bin/bash
filename='sample.txt'
read WORD
n=0

while read line;
do
    n=$((n+1))
    count=0
    for w in $line
    do
        count=$((count+1))
        if [ "$w" = "$WORD" ];
        then
        echo -e "Line number:$n\t Word number:$count"
        fi
    done
done < $filename
