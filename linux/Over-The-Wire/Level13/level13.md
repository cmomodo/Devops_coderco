For this level we will login with the password from step 12.

Next we will copy the private key using scp:
`scp -P 2220 bandit13@bandit.labs.overthewire.org:~/sshkey.private .`

Then what we will do is use the ssh key to login into step 14.

`scp -P 2220 bandit13@bandit.labs.overthewire.org:~/sshkey.private .`

this copies the private key into our system next we will use it to ssh into the level14.


'ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220'
