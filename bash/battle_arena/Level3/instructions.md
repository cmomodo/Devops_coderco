Level 3: Conditional Statements

Mission: Write a script that checks if a file named hero.txt exists in the Arena directory. If it does, print Hero found!; otherwise, print Hero missing!.


This is what i did. First look at how to solve the problem.

i provided it with an environment variable. then checked the path and verified the existence of the file.

```
#!/bin/bash

#script to check for hero.txt
FILE="../level1/Arena/hero.txt"

if [ -f "$FILE" ]; then
    echo "Hero found!"
else
    echo "Hero missing"
fi

```
