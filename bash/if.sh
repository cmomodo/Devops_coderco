#!/bin/bash

# Variables
age=28

if [[ "$age" -eq 27 ]]; then
    echo "Condition is true"
else
    echo "Condition is false"
fi

#operators
# eq = equals to
# ne = not equals to
# lt = less than
# gt = greater than
# le = less than or equal to
# ge = greater than or equal to


#conditional extra

grade=95

if [ $grade -ge 90 ] && [ $grade -le 100 ]; then
    echo "excellent"
fi
