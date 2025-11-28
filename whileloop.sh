#!/bin/bash

#A while loop runs as long as the given condition is true.
#You use it when the number of iterations is unknown.

i=1
while [ $i -le 5 ]
do
  echo "Number: $i"
  i=$((i+1))
done


#How do you read a file line by line in a shell script?
# IFS internal field seperator
#vBut here we use: IFS=his means “don’t split the input”.
#👉 So even if the line has spaces, the full line is read exactly as it is.

while IFS= read -r line 
do
  echo "$line"
done < filename.txt # "<" file	Read input from a file
                     #  "<<<" string	Read input from a string


