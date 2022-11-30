#!/bin/sh

file=()
count=0
for filename in lib/*.odt
do
    file+=("$filename")
    echo "$count)$filename"
    count=$((count+1))
done
echo "Choose file"
read -p "filenumber:" filenumber
ftitle="${filename%.*}"
pandoc -s -t latex "${file[$filenumber]}" | xelatex
mv texput.pdf $ftitle.pdf
rm texput.aux
rm texput.log
