#!/bin/bash

num1=27
num2=3

if [ "$num2" -eq 0 ]; then
    echo "Error not divisible"
    exit 1
fi

result=$((num1 / num2))
echo "The result is: $result"

FILE="hello.sh"

if [[ -f "$FILE" ]]; then
    echo "File exists"
else
    echo "File does not exist"
fi
