#!/bin/bash
string=$1
value=`cat $string`
arr=( $value )
#echo ${arr[*]}
flag=0
for ((i=0; i<${#arr[*]}; i++));
do
    echo ${arr[i]}
    if [[ ${arr[i]} -eq 'a' || ${arr[i]} -eq 'e' || ${arr[i]} -eq 'i' || ${arr[i]} -eq 'o' || ${arr[i]} -eq 'u' ]]
    then
	echo yes
 
    flag=$(( flag + 1 ))
    if [[ $flag -eq 2 ]]
   # if [[ ${arr[i+1]} -eq a || ${arr[i+1]} -eq e || ${arr[i+1]} -eq i || ${arr[i+1]} -eq o || ${arr[i+1]} -eq u] ]]
    then
    echo ${arr[i+1]} 
    flag=0
    #i=$(( $i + 1 ))
    #i=$(( $i + 1))
    fi
    else
    flag=0
    fi
done

