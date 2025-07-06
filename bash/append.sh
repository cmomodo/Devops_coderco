#!/bin/bash

append_file(){
    local file_path="$1"
    local content="$2"

    echo "$content" >> "$file_path"
}

append_file "my_file.txt" "Hello, World its ceesay here!"
