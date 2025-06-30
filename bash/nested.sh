#!/bin/bash

#variables
age=18
grade=85

if [ $age -eq 18 ]
then
    echo "You are eligible based on age"
    if [ $grade -ge 80 ]
then
        echo "You are eligible based on grade"
    else
        echo "You are not eligible based on grade"
    fi
fi
