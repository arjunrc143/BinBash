#!/bin/bash
#echo "$@"
IFS=$(echo "")
link=$1
content=$(wget -O - $link)
echo $content | sed -n 's/.*href="\([^"]*\).*/\1/p' # | grep -E '<a href=".*">' | cut -d’”’ --output-delimiter=$'\n'
