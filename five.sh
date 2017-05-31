#!/bin/bash
string=$@
#echo $string
var=$(echo $string | awk -F":" '{print $1,$2}')   
set -- $var
#echo $1
hr=$1
#echo $2
min=$2
if [ $hr -eq 00 ]
then
if [ $min -eq 00 ]
then
echo 12:$min AM 
else
echo 12:$min AM
fi
elif [ $hr -gt 12 ]
then
hr=$(( hr - 12 ))
if [ $hr -lt 10 ]
then
echo 0$hr:$min PM
else
echo $hr:$min PM
fi
elif [ $hr -eq 12 ]
then
if [ $min -eq 00 ]
then 
echo $hr:$min PM
else
echo $hr:$min PM
fi
else
echo $hr:$min AM
fi
