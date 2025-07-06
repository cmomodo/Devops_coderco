#!/bin/bash

#script to check for hero.txt
FILE="../level1/Arena/hero.txt"

if [ -f "$FILE" ]; then
    echo "Hero found!"
else
    echo "Hero missing"
fi
