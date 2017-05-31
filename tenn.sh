#!/bin/bash
#IFS=&'\n'
IFS=$(echo "")
string=$@
value=`cat $string`
echo $value | sed 's/[^ ]*\( .*\)/\1/' | sed 's/[^:]*\(:.*\)/\1/'| sed -r 's/://' | sed '/^00/!d' | sed 's/[^:]*\(:.*\)/\1/' | sed -e 's/ / /' | awk '{print NR,$0}' | sed 's/Z/50/g;s/Y/40/g;s/X/30/g;s/W/20/g;s/V/13/g;s/U/Z/g;s/T/Y/g;s/S/X/g;s/R/W/g;s/Q/V/g;s/P/U/g;s/O/T/g;s/N/S/g;s/M/R/g;s/L/Q/g;s/K/P/g;s/J/O/g;s/I/N/g;s/H/M/g;s/G/L/g;s/F/K/g;s/E/J/g;s/D/I/g;s/C/H/g;s/B/G/g;s/A/F/g;s/z/91/g;s/y/90/g;s/x/80/g;s/w/70/g;s/v/60/g;s/u/z/g;s/t/y/g;s/s/x/g;s/r/w/g;s/q/v/g;s/p/u/g;s/o/t/g;s/n/s/g;s/m/r/g;s/l/q/g;s/k/p/g;s/j/o/g;s/i/n/g;s/h/m/g;s/g/l/g;s/f/k/g;s/e/j/g;s/d/i/g;s/c/h/g;s/b/g/g;s/a/f/g' | sed -e 's/50/E/g;s/40/D/g;s/30/C/g;s/20/B/g;s/13/A/g;s/91/e/g;s/90/d/g;s/80/c/g;s/70/b/g;s/60/a/g' | sed -r 's/.{0}/Step /' | sed -e 's/ //2' | head -c -1 
