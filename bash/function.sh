#!/bin/bash

fizzbuzz() {
    if [[ "$1" -eq 3 ]]; then
        echo "fizz"
    elif [[ "$1" -eq 5 ]]; then
        echo "buzz"
    else
        echo "$1"
    fi
}

# Example usage:
# fizzbuzz 3
# fizzbuzz 5
# fizzbuzz 7

# To run the FizzBuzz sequence:
for i in $(seq 1 30); do
    fizzbuzz "$i"
done

print_args() {
    echo "Arguments: $#"
    echo "Script name: $0"
    echo "First argument: $1"
    echo "Second argument: $2"
    echo "All arguments: $@"
}

print_args "Alice Bob,  ceesay"


#now we are going to create input for greeting a user
greeting_user() {
    local name

    if [ $# -eq 0 ]; then
        echo "Please provide a name."
        read name
    else
        name="$1"
    fi

    echo "Hello, $name!"
}

greeting_user
