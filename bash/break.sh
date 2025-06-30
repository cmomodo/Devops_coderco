#!/bin/bash

for ((i=0;i<10;i++))
do
	echo $i
done
if [ $i -eq 5 ]; then
    echo "Breaking the loop at i=$i"
    break
fi