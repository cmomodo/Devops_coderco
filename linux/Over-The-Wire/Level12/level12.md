the challenge for level 12 was a bit hard. This forced me to create a new sort of environment. This was done with the use of the mktemp -d.

This created a new folder for me to use.
`cd /tmp/tmp.W5t1vua6G9`
next we will get into that directory.
`cp ~/data.txt .`

The next thing we do is rename the file and move it into another file.
`mv data.txt hexdump_data`
we then check the head and see what it will bring out.
`ls`
We then see that we need to change the file back to binary.
`cat hexdump_data | head`
Next we move the decompressed data into another file. We will then decrypt the data again.
`xxd -r hexdump_data compressed_data`

Next we continue to decompress the data.
`/tmp/tmp.W5t1vua6G9$ cat hexdump_data `

password = FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn

nextg we will decompress the data.

`gzip -d compressed_data`

we will now see that the data is decompressed. We will then check the file to see what it has.
`ls`

we will then see that the data is still in hexadecimal format. We will then convert it to binary
`xxd compressed_data`
