#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 14/09/2023
#Last Date Modified: 14/09/2023


# A script that accepts an input from 1 - 7 and prints the day of the week

read -p "Enter a number from 1 to 7: " num

case $num in
  1) echo "Sunday";;
  2) echo "Monday";;
  3) echo "Tuesday";;
  4) echo "Wednesday";;
  5) echo "Thursday";;
  6) echo "Friday";;
  7) echo "Saturday";;
  *) echo "Invalid input. Please enter a number from 1 to 7.";;
esac

