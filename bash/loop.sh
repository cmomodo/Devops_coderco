#!/bin/bash

name="Bob"
read -p "Enter your name: " name
if [ "$name" == "Alice" ]; then
    echo "Hi Alice!"
fi

for i in 1 2 3; do
    echo "Number $i"
done

greet() { echo "Hello, $1!"; }
greet "Alice"
