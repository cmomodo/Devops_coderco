This is the backup. the command to zip files is `tar`

next we will now look into how the tar command works with arguments. These arguments are obtained using the man command.

`man`

Next, we will look at how to add the date to the backup file name using the `date` command.

`date`

we will then use the date command with the man command to see how it works properly.

`man date`

This shows us how we can use regex like `date +%Y-%m-%d` to format the date in a specific way.

`date +%Y-%m-%d`

Next we will then zip this file and store it in the source directory.

`tar -czvf backup_$(date +%Y-%m-%d).tar.gz backup.md`

we  will do the same to rotate the backup files.
