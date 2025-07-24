#!/bin/bash

# Source shell configuration to access the google function
source ~/.bashrc 2>/dev/null || source ~/.bash_profile 2>/dev/null || source ~/.zshrc 2>/dev/null || true

echo "Welcome to the final test:"
echo " You have 3 options to pick:"
echo " 1. Option 1(Check Disk Space)"
echo " 2. Option 2(Check System Uptime)"
echo " 3. Option 3(Google Search)"

echo " Please enter your choice:"
read choice

case $choice in
    1)
        echo "You chose Option 1"

        ;;
    2)
        echo "You chose Option 2"
        ;;
    3)
        echo "You chose Option 3"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac

#if option is 1 check disk space
if [ "$choice" == "1" ]; then
    echo "Checking disk space..."
    df -h
fi

#if option 2 we check the system uptime
if [ "$choice" == "2" ]; then
    echo "Checking system uptime..."
    uptime
fi

#we will google the best airfryer to use at the moment.
if [ "$choice" == "3" ]; then
    echo "Searching for the best airfryer to use at the moment..."
    google "what the best airfryer to use at the moment"
    echo "Thank you for playing!"
fi
