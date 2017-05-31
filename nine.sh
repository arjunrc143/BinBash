#!/bin/bash
IFS='\n'
string=$@

value=`cat $string`
#echo $value
echo $value | sed -e '/^$/d;/^0/d;/^1/d;/^2/d;/^3/d;/^4/d;/^5/d;/^6/d' | sed -e '/.[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]/!d' | sed -e '/.[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]/d' | sed -r 's/.{3}/&-/g' | sed -e 's/-//3' | sed -r 's/.{0}/&+91-/' #| grep -o '[ ].' | sed -e 's/ //g' | tr -d '\n' #| sed -e 's/\n//g'

