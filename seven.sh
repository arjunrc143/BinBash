#!/bin/bash
file=$@
cntnt=`cat $file`
echo $cntnt | sed -e 's/A/z/g;s/B/y/g;s/C/x/g;s/D/w/g;s/E/v/g;s/F/u/g;s/G/t/g;s/H/s/g;s/I/r/g;s/J/q/g;s/K/p/g;s/L/o/g;s/M/n/g;s/N/m/g;s/O/l/g;s/P/k/g;s/Q/j/g;s/R/i/g;s/S/h/g;s/T/g/g;s/U/f/g;s/V/e/g;s/W/d/g;s/X/c/g;s/Y/b/g;s/Z/a/g' | tr -d '\n'
