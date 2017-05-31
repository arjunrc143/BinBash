#!/bin/bash
round()
{
echo $(printf %.$2f $(echo "scale=$2;(((10^$2)*$1)+0.5)/(10^$2)" | bc))
};
n=$#
#echo $n
i=0
ans=0
for var in $@
do 
ans=$(( var + $ans))
#echo $ans
done
#anss=$(( $ans / $n))
#echo $anss
echo $(round $ans/$n 2);

