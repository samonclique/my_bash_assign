#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 13/09/2023
#Last Date Modified: 13/09/2023


# Define Kofi's credit limit as a constant variable
credit_limit=2000

# Read the transaction amount from the user input
read -p "Enter the transaction amount: " amount

# Check if the amount is a valid number
if [[ $amount =~ ^[0-9]$ ]]; then
  # If the amount is valid, compare it with the credit limit
  if [ $amount <= $credit_limit ]; then
    # If the amount is less than or equal to the credit limit, approve the transaction
    echo "Your transaction is approved. You have spent $amount out of your $credit_limit credit limit."
  else
    # If the amount is greater than the credit limit, decline the transaction
    echo "Your transaction is declined. You have exceeded your $credit_limit credit limit."
  fi
else
  # If the amount is invalid, ask the user to enter a valid number
  echo "The transaction amount you entered is invalid. Please enter a valid number."
fi





