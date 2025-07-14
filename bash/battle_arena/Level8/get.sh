#!/bin/bash

# Ask the user for the word or phrase to search for
echo "Enter the word or phrase to search:"
read search_term

# Search across all .log files and print the file names containing the term
grep -l "$search_term" *.log
