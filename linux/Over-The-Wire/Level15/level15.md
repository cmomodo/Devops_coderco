This step we use the password from the previous level. 

password = kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

now we will use this password for the tls handshake method.
Next we will use this command.

`echo "your_password_here" | openssl s_client -connect localhost:30001`

Then we will add the quiet flag just to get the command we need.

`echo "your_password_here" | openssl s_client -connect localhost:30001 -quiet`

This will give us only the answer we need which is the response. 

this means we have acknowledged the request.
