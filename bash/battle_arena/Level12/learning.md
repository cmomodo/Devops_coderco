This script we will first use a normal script that reads files as a draft.

```
while read -r key value; do
  echo "$key = $value"
done < settings.conf
```

we will then use variable to store the file path.

```
file="settings.conf"
```

Next, we will use variable to print line numbers line by line.
