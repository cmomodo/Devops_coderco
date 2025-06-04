password = FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey

so the first things we do is to figure out how to bring up the strings.
Next we will figure out how to use reusable strings .
website: https://ioflood.com/blog/strings-linux-command/#:~:text=The%20'strings'%20command%20in%20Linux%20is%20used%20to%20extract%20readable,bin%20.&text=In%20this%20example%2C%20we've,a%20binary%20file%20named%20'myfile.
thats the website used to obtain the command.
after seeing the password we need to figure out how to get hte password.
we had to figure out how to pipe it with the equals to.
this then gave us the command strings -t d data.txt | grep ===

password = dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

this is the password for level10.
we have finished the first half next what we will do is decode data.txt
so what we do this time is base64 -d data.txt
