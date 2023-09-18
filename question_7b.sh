#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 14/09/2023
#Last Date Modified: 14/09/2023


# Define an array of five best Linux distributions
distros=("Ubuntu" "Fedora" "Debian" "Arch Linux" "Mint")

# Using  a for loop to iterate over the array and print each item
for distro in "${distros[@]}"; do
  echo "$distro"
done

# Get  the array size and print it
echo "The array size is ${#distros[@]}"

