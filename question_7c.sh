#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 14/09/2023
#Last Date Modified: 14/09/2023


echo "Please enter username, groupname and password respectively."

# Check if the script is given three arguments
if [ $# -eq 3 ]; then
  # Assign the arguments to variables
  name=$1
  group=$2
  password=$3

  # Use the useradd command with the -m and -g options to create a new user with the given name and group
  useradd -m -g $group $name

  # Check if the user creation was successful
  if [ $? -eq 0 ]; then
    # If successful, use the echo and passwd commands to set the password for the new user
    echo "$password" | passwd --stdin $name

    # Print a success message
    echo "New user $name created successfully."
  else
    # If not successful, print an error message
    echo "User creation failed."
  fi
else
  # If the script is not given three arguments, print a usage message
  echo "Usage: $0 name group password"
fi

