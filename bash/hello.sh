#!/bin/bash

# Set options for safer script execution
set -euo pipefail

# This is the first part of the demo happy learning!
# The set options mean:
# -e: Exit immediately if a command exits with a non-zero status
# -u: Treat unset variables as an error
# -o pipefail: Ensure that a pipeline returns a non-zero status if any command fails

# Validate name is not empty
if [[ -z "${name:-}" ]]; then
    name="ceesay"
fi

echo "My name is Momodou, $name"

# Prompt for name with input validation
while true; do
    read -p "Enter your name: " name1

    # Check if name1 is not empty and contains only letters
    if [[ -n "$name1" ]] && [[ "$name1" =~ ^[A-Za-z]+$ ]]; then
        break
    else
        echo "Invalid input. Please enter a valid name (letters only)."
    fi
done

echo "My name is $name1"
