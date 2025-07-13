This challenge focused on using files and sorting them too.

The first thing we do is check if the file exists.

```
if [ ! -f "$file_name" ]; then
    echo "File not found"
    exit 1
fi

```

Next , we will count the number of lines in the file.
```
line_count=$(wc -l < "$file_name")
echo "Number of lines: $line_count"

```
