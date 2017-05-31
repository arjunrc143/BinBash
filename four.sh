#!/bin/bash
F ()
{
  local idx=$1
  if [ "$idx" -eq 0 ]
  then
   echo 1
  #return 1
  elif [ "$idx" -eq 1 ]
  then
  echo 2
 # return 2
  else
    #(( --idx ))  # j-1
    local h=$(( idx - 1 ))
    local term1=$( F $h )   #  F(j-1)

    #(( --idx ))  # j-2
    local i=$(( idx - 2 ))
    local term2=$( F $i )   #  F(j-2)

    #local ans= $(( term1 * term2 ))
    echo $(( term1 * term2 ))
    #return $ans
  fi
}

 i=$1
  F $i
# echo $?
