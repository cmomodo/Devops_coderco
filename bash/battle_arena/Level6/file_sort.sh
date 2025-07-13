#!/bin/bash

#we will now take the file input from the user
echo "Enter the file name:"
read file_name

#check if the file exists
if [ ! -f "$file_name" ]; then
    echo "File not found"
    exit 1
fi

#count the number of lines in the file
line_count=$(wc -l < "$file_name")
echo "The file has $line_count lines"
#sort the file
sort "$file_name"
