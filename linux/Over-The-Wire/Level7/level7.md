we are going to be using the following commands:

we use the find command
give it the following arguments:
the user
the group
the size

find / -user bandit7 -group bandit6 -size 33c -print0 | xargs -0 ls -l

we pipe it ls everything

password: morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
