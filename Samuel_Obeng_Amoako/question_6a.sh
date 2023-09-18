#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 14/09/2023
#Last Date Modified: 14/09/2023



# Initialize a variable to store the line number

line_number=1

# Use a while loop to read the file line by line

while read -r line; do

  # Print the line number, a colon, a space, and the line content
  echo "$line_number: $line"

  # Increment the line number by 1
  ((line_number++))

# Use input redirection to pass the file name to the loop
done < /etc/passwd

