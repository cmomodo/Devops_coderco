#!/bin/bash

count=1
while [ $count -le 5 ]
do 
    echo "Count is $count"
    count=$((count + 1))
done

fruits=("banana" "cherry" "mango")
index=0

# Corrected and more standard way to write the while condition for array iteration
while [ "$index" -lt "${#fruits[@]}" ]
do
    echo "Fruit at index $index: ${fruits[$index]}"
    index=$((index + 1)) # Increment index
done
