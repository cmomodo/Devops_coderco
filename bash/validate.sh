#!/bin/bash

local_age(){
    local age=$1

    if [[ ! "$age" =~ ^[0-9]+$ ]]; then
        echo "Invalid age. Please provide a numeric value."
        return 1
    fi

    if (( age < 18 )); then
        echo "sorry , you must be at least 18 years old to use this service."
        return 1
    fi

    echo "Congratulations! You are eligible to use this service."
    return 0
}

echo " Please enter your age: "
read user_age

local_age "$user_age"
exit_code=$?

if (( exit_code == 0 )); then
    echo "Validation successful."
else
    echo "Validation failed."
fi
