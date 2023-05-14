#!/bin/bash 

var1=$(sed -e "s/[[:punct:]]/ /g" $1)

var2=$(tr '[:upper:]' '[:lower:]' <<< $var1)

(tr ' ' '\n' <<< $var2) | grep -v '^$'| sort | uniq -c | sort -r > $2
