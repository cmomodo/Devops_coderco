#!/bin/bash

# Create a new directory called "Battlefield"
mkdir -p Battlefield

#saying that the files are created.
echo "Creating Files!"

#create a file inside the Battlefield directory
touch Battlefield/knight.txt
touch Battlefield/sorcerer.txt
touch Battlefield/rogue.txt

#now we will check some files.
if [ -f Battlefield/knight.txt ]; then
    echo "Knight file exists!"
    mkdir -p Archive
    mv Battlefield/knight.txt  Archive/knight.txt
    else
    echo "Knight file does not exist!"
fi

#now we will list the contents of both directories
echo "Contents of Battlefield:"
ls Battlefield
echo "Contents of Archive:"
ls Archive
