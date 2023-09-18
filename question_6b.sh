#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 14/09/2023
#Last Date Modified; 14/09/2023


# Ask the user for the number of lines using the read command
read -p "How many lines of /etc/passwd would you like to display? " num

# Check if the input is a valid positive integer using the -gt operator
if [ $num -gt 0 ]; then
 
 # If the input is valid, use the head command with the -n option to display the first n lines of the file
  head -n $num /etc/passwd

else
  # If the input is invalid, print an error message and exit with a 1 exit status, which means failure
  echo "Invalid input. Please enter a positive integer."
  exit 1
fi

