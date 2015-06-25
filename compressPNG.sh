#!/bin/bash
IFS=$'\n'     # new field separator, the end of line
FILE_EXT='-fs8.png'
for line in $(find . -name '*.png')
do
   #echo  $line
   #basename $line
   #dirname $line
   newName=$(echo $line | sed 's/.png/-fs8.png/')
   pngquant $line
   if [ -e "$newName" ]; then
       mv $newName $line
       echo "compressing file $line ............"
   else
       echo "No files match" >&2
    fi

done

