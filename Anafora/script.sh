#!/bin/sh
file="./assign/readme.md"
echo $file
pandoc -s -f markdown -t docx -o readme.docx "$file"
