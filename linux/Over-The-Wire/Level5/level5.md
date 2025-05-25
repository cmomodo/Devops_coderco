4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

find . -type f -not -executable -exec file --mime-type {} + | awk -F': ' '$2 ~ /text\// {print $1}'

Let's break down this improved command:

find .: Starts the search from the current directory.
-type f: Ensures we only consider regular files (not directories, links, etc.).
-not -executable: Excludes executable files.
-exec file --mime-type {} +: This is a key improvement:
file --mime-type: This tells the file command to output the MIME type of the file. This is more standardized and reliable for identifying text files (e.g., text/plain, text/html, text/xml).
{}: Placeholder for the found files.
+: This is crucial for efficiency. Instead of executing file for each file individually, find will batch up as many filenames as possible and pass them to a single file command. This significantly reduces overhead for many files.
| awk -F': ' '$2 ~ /text\// {print $1}':
|: Pipes the output of the find command to awk.
awk -F': ': Sets the field separator for awk to : (colon followed by a space). This is because file --mime-type outputs in the format filename: mime_type.
$2 ~ /text\//: This is the condition. It checks if the second field (the MIME type) matches the regular expression text/. This will capture text/plain, text/html, text/xml, text/css, etc., all of which are generally considered human-readable.
{print $1}: If the condition is met, it prints the first field, which is the filename.
Why this is better for "human-readable":

MIME Types are Reliable: Relying on file --mime-type is a more robust way to identify text-based content, as MIME types are designed for this purpose.
Efficiency: Using + with -exec greatly improves performance for large file sets.
Specificity: The text/ pattern in awk is more encompassing for human-readable content than just grep "text$".

used gemini 2.5 flash to solve this.
