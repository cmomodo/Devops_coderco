First off we start by looking at the files in the parent directory.

the command for that is:
```
find . -name "*.txt"
```

This command will search for files that end with ".txt".

next we will add the cp command to copy the files to a new directory.

```
-exec cp {} archer/
```

Then we will save everything to a new directory.
