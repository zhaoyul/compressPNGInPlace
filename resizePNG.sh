#!/bin/bash
IFS=$'\n'     # new field separator, the end of line
for line in $(find . -name '*.png')
do
   #echo  $line
   #basename $line
   #dirname $line
   if [ -e "$line" ]; then
       #convert $line -resize 700x700 $line
       echo $line
   else
       echo "No files match" >&2
    fi

done

