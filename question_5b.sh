#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 13/09/2023
#Last Date Modified: 13/09/2023


# Check if the argument is given
if [ -z "$1" ]; then
  # If the argument is empty, print an error message and exit with a 3 exit status
  echo "Please provide a file or directory name as an argument."
  exit 3
fi

# Check the type of the argument using the -f, -d, and -e options of the test command
if [ -f "$1" ]; then
  # If the argument is a regular file, print a message and exit with a 0 exit status
  echo "$1 is a regular file."
  exit 0
elif [ -d "$1" ]; then
  # If the argument is a directory, print a message and exit with a 1 exit status
  echo "$1 is a directory."
  exit 1
elif [ -e "$1" ]; then
  # If the argument is some other type of file, print a message and exit with a 2 exit status
  echo "$1 is some other type of file."
  exit 2
else
  # If the argument does not exist, print an error message and exit with a 4 exit status
  echo "$1 does not exist."
  exit 4
fi

