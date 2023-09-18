#!/bin/bash



#Author: Samuel Obeng Amoako
#Date Created: 13/09/2023
#Last Date Modified: 13/09/2023

# Create the files for the work
touch b2.sh bashass.sh bash.sh black.mp3 bubu.avi dame.mov david.flac dev.log dino.log edochie.jpg efe.log games.avi hunger.mov mapple.jnp naija.jpg nana.mov peace.py pete.png python.py shata.flac sheriff.flac toyin.pdf van.avi wale.mp3 wike.avi wiz.mp3 yul.jpg Yvonne.txt zanku.mp3 ghana.avi

# Create the new directories for music, images, and videos
mkdir music images videos

# Move all files with .mp3 and .flac extensions to the music directory
mv *.mp3 *.flac music

# Move all files with .jpg and .png extensions to the images directory
mv *.jpg *.png images

# Move all files with .avi and .mov extensions to the videos directory
mv *.avi *.mov videos

# Remove all files with .log extension
rm *.log

# Print a message to indicate the task is done
echo "The directory is now organized."





