#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 14/09/2023
#Last Date Modified: 14/09/2023




while true; do
  
# Display the menu options

  echo "What would you like to do?"
  
  echo "1. Show disk usage."
 
  echo "2. Show system uptime."
 
  echo "3. Show the users logged into the system."
 
  echo "Enter q to quit."

  # Read the user input using the read command
  read -r input

  # Use a case statement to perform different actions based on the input
  case $input in
    # If the input is 1, show the disk usage using the df command
    1) df
       # Print a blank line after the output
       echo
       ;;
    # If the input is 2, show the system uptime using the uptime command
    2) uptime
       # Print a blank line after the output
       echo
       ;;
    # If the input is 3, show the users logged into the system using the who command
    3) who
       # Print a blank line after the output
       echo
       ;;
    # If the input is q, print a goodbye message and exit the loop with a break statement
    q) echo "Goodbye!"
       break
       ;;
    # If the input is anything else, print an invalid option message and continue the loop with a continue statement
    *) echo "Invalid option."
       continue
       ;;
  esac
done

