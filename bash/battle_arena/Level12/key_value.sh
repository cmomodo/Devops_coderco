#!/bin/bash

#file to read for key_value
file="cars.txt"while IFS= read -r line; do
    line_no_num=${line#* }
    key=${line_no_num%% - *}
    value=${line_no_num#* - }
    echo "key=$key value=\"$value\""
done < "$file"

while IFS= read -r line; do
    line_no_num=${line#* }
    key=${line_no_num%% - *}
    value=${line_no_num#* - }
    echo "key=$key value=\"$value\""
done < "$file"
