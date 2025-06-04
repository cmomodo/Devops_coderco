this level we will ssh into the server. The next thing we do is use the private key to get into level14.

'ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220'

Then we will check the path provided if we have the password there.
`cat /etc/bandit_pass/bandit14`

Then we will use that password to ssh into level14.
`echo "your_password_here" | nc localhost 30000`

password = 8xCjnmgoKbGLhHFAZLGE5Tmu4M2tKJQ0
