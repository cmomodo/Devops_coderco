for this challenge we are going to use the regex command to sort all the regex used.
In modern day times we dont have to type but know things. so i just asked chatgpt
next i used the grep command to search for the regex.
grep '[n-za-mN-ZA-M]' data.txt

This partially gave me the password but i needed to be clear. so i then did research and realised i have to use the tr command.
then i came up with tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt | grep '[n-za-mN-ZA-M]'

this command gave me the password: 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
