#!/bin/bash

mkdir -p archer

files=$(find .. -type f -name "*.txt")

if [[ -n "$files" ]]; then
  find .. -type f -name "*.txt" -exec cp {} archer/ \;
else
  echo "No files found"
fi
