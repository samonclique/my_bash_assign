#!/bin/bash

#Author: Samuel Obeng Amoako
#Date Created: 14/09/2023
#Last Date Modified: 14/09/2023

#Assign script argument to a variable
Directory=$1


# Use the du command with the -sh option to output the size of variable
du -sh $Directory

