#!/bin/bash


#Author: Samuel Obeng Amoako
#Date Created: 13/09/2023
#Last Date Modified: 13/09/2023


# Welcome Kofi to Udemy.com and instruct him to select a course

echo "Welcome to Udemy.com, Kofi. We are glad you chose us as your learning partner."
sleep 1s
echo "To purchase a course, please select one from our catalog and click on the buy now button."
sleep 1s

# Read the 16-digit card number from the user input
read -p "Enter your 16-digit card number: " card_number

# Check if the card number is valid and ends with 4412
if [[ $card_number =~ ^[0-9]{16}$ ]] && [[ $card_number == *4412 ]]; then
  # If the card number is valid, ask the user to enter the postcode and CVC
  echo "Your card number is valid. Now you need to enter your postcode and CVC for verification."
  sleep 1s
  
  read -p "Enter your postcode: " postcode
  read -p "Enter your CVC: " cvc

  # Check if the postcode and CVC match the card information
  if [ $postcode == "T4E5J1" ] && [ $cvc == "113" ]; then
    # If the postcode and CVC match, congratulate the user and complete the transaction
    echo "Your postcode and CVC are correct. Congratulations, your transaction is successful."
    sleep 1s

    echo "You can now access your course and start learning."
    sleep 1s

    echo "Thank you for choosing Udemy.com. Have a nice day."
  else
    # If the postcode or CVC do not match, decline the transaction and block the card
    echo "The postcode or CVC you entered is incorrect. Your transaction is declined."
    
    echo "For security reasons, your card is blocked. Please contact RBC customer service to unblock your card."
  fi
else
  # If the card number is invalid or does not end with 4412, ask the user to check the card number and try again
  echo "The card number you entered is invalid or does not match your card. Please check your card number and try again."
fi

