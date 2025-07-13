#!/bin/bash

#First we will check the file sizes in the directory
    echo "Counting all file sizes"
    wc -c *.txt

    echo "Sorting file sizes"
    wc -c *.txt | sort -n

    # List all .txt files, sort them by size, and number the output
    for file in *.txt; do
      if [ -f "$file" ]; then
        echo "$(wc -c < "$file") $file"
      fi
    done | sort -n | nl
