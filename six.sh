#!/bin/bash
string=$@
value=`cat $string`
echo $value | sed -e 's/[^A-Z]//g'
