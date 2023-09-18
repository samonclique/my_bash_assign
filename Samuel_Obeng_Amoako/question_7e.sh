#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 14/09/2023
#Last Date Modified: 14/09/2023

# A script that accepts a number and determines if it is odd or even

read -p "Enter a number: " num

if [ $((num % 2)) -eq 0 ]; then
  echo "$num is even"
else
  echo "$num is odd"
fi

