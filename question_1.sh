#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 20/08/2023
#Last Date Modified: 20/08/2023


#This is a shell script to aid new customers of RBC setup a pin and activate their credit card with an RBC cash machine



# Welcome Kofi to RBC and instruct him to insert his card
echo "Welcome to RBC, Kofi. We are glad you chose us as your banking partner."
sleep 1s

echo "To activate your card, please insert it into the cash machine slot."
sleep 1s

# Read the last four digits and CVC of the card from the user input
read -p "Enter the last four digits of your card number: " last_four
read -p "Enter the CVC of your card: " cvc

# Check if the input matches the card information
if [ $last_four == "4412" ] && [ $cvc == "113" ]; then

  # If the input is correct, ask the user to enter a pin twice
  echo "Your card information is correct. Now you need to set up a pin for your card."
  sleep 1s

  read -s -p "Enter a four-digit pin: " pin1 # The -s option makes the input invisible
  echo # Print a newline
  read -s -p "Re-enter the pin: " pin2 # The -s option makes the input invisible
  echo # Print a newline

  # Check if the pins match and also contains only four digit integers 0-9
  if [[ $pin1 =~ ^[0-9]{4}$ ]] && [[ $pin1 == $pin2 }]; then

    # If the pins match, congratulate the user and activate the card
    echo "Your pin is set. Congratulations, your card is now activated."
    echo "You can now use your card for online and offline transactions."
    echo "Thank you for banking with RBC. Have a nice day."
  else
    # If the pins do not match, ask the user to try again
    echo "The pins do not match. Please try again."
  fi
else
  # If the input is incorrect, ask the user to check the card information and try again
  echo "The card information you entered is incorrect. Please check your card number and CVC and try again."
fi












