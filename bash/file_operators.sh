#!/bin/bash

read_file(){
    local file_path="$1"

    while IFS= read -r line; do
        echo   "Processing line: $line"
    done
}

read_file "$file_path" = "./file.txt"
