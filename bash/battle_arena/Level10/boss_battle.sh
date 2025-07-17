#!/bin/bash

# Create the Arena_Boss directory
mkdir -p Arena_Boss

# Create 5 files with random lines
for i in {1..5}
do
  lines=$(( (RANDOM % 11) + 10 ))
  for (( j=1; j<=$lines; j++ ))
  do
    echo "This is line $j" >> Arena_Boss/file$i.txt
  done
done

# Add "Victory" to some files
echo "Victory" >> Arena_Boss/file2.txt
echo "Victory" >> Arena_Boss/file4.txt

# Sort files by size
echo "Files sorted by size:"
ls -S Arena_Boss

# Check for "Victory" and move files
mkdir -p Victory_Archive
for file in Arena_Boss/*
do
  if grep -q "Victory" "$file"
  then
    mv "$file" Victory_Archive/
    echo "Moved $file to Victory_Archive"
  fi
done

echo "Script finished."
