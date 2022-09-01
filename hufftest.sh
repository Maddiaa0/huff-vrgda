#!/bin/bash
SOURCE=$(pwd)
files=`find "$SOURCE" -type f -name "*.t.huff"`

for i in "${files[@]}"
do
   huffc $i test 
done
echo "Tests ran on"
printf '%s\n' "${files[@]}"

