#!/bin/bash


#Author: Samuel Obeng Amoako
#Date Created: 13/09/2023
#Last Date Modified: 13/09/2023



# Execute the command and store the exit status in a variable
cat /etc/shadow
status=$?

# Check the exit status using the -eq operator, which means equal to
if [ $status -eq 0 ]; then


  # If the exit status is 0, print a success message and exit with a 0 exit status
  echo "Command succeeded"
  exit 0
else


  # If the exit status is not 0, print a failure message and exit with a 1 exit status
  echo "Command failed"
  exit 1
fi






