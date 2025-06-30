/
# Understanding `set` commands in Bash

The `set` command in Bash is used to change shell options and set positional parameters. Three of the most important and commonly used options are `-e`, `-u`, and `-x`. These options can help you write safer and more debuggable shell scripts.

## `set -e`

The `set -e` option, also known as `errexit`, will cause a script to exit immediately if a command exits with a non-zero status. This is useful for preventing unexpected behavior and ensuring that your script stops if a critical command fails.

**Example:**

Without `set -e`, the script will continue to run even after the `non_existent_command` fails, and it will echo "Done.":

```bash
#!/bin/bash

non_existent_command
echo "Done."
```

**Output:**

```
./script.sh: line 3: non_existent_command: command not found
Done.
```

With `set -e`, the script will exit immediately after the `non_existent_command` fails, and it will not echo "Done.":

```bash
#!/bin/bash
set -e

non_existent_command
echo "Done."
```

**Output:**

```
./script.sh: line 4: non_existent_command: command not found
```

## `set -u`

The `set -u` option, also known as `nounset`, will cause the script to exit if you try to use an uninitialized variable. This is useful for catching typos and other errors that could lead to unexpected behavior.

**Example:**

Without `set -u`, the script will simply treat the uninitialized variable as an empty string and echo "My name is :":

```bash
#!/bin/bash

echo "My name is : $MY_NAME"
```

**Output:**

```
My name is :
```

With `set -u`, the script will exit with an error when it tries to use the uninitialized variable `$MY_NAME`:

```bash
#!/bin/bash
set -u

echo "My name is : $MY_NAME"
```

**Output:**

```
./script.sh: line 4: MY_NAME: unbound variable
```

## `set -x`

The `set -x` option, also known as `xtrace`, will cause the shell to print each command before it is executed. This is extremely useful for debugging your scripts, as it allows you to see exactly what commands are being run and in what order.

**Example:**

With `set -x`, the shell will print each command before it is executed:

```bash
#!/bin/bash
set -x

MY_NAME="John"
echo "My name is : $MY_NAME"
```

**Output:**

```
+ MY_NAME=John
+ echo 'My name is : John'
My name is : John
```

## Combining Options

You can combine these options to make your scripts even more robust. It is common to see scripts that start with `set -eux`:

```bash
#!/bin/bash
set -eux

# Your script here
```
