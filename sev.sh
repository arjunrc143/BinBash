#!/bin/bash
string=$@
value=`cat $string`
echo $value | sed -e 's/[aeiou][aeiou]/ /g' | grep -o '[ ].' | sed -e 's/ //g' | tr -d '\n' #| sed -e 's/\n//g'
echo ""
