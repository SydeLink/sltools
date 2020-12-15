#!/bin/bash

# Notes
# RaspPi Example: https://github.com/projectM-visualizer/projectm/issues/115
#
#

# ProjectM
projSRC=https://github.com/SydeLink/projectm.git

if [[ $EUID -ne 0 ]]; then
   	echo "This script must be run as root" 
   	exit 1
else
	# Update and Upgrade
	echo "Updating and Upgrading"
	sudo apt-get update && sudo apt-get upgrade -y

    # Intro
    echo ">ProjectM"
    
    # Install dependencies
    echo "Installing dependencies"
    sudo apt install clang libsdl2-dev libgl1-mesa-dev qt5-default qtdeclarative5-dev libqt5opengl5-dev libjack-dev libpulse-dev
    
    # Download Source
    echo "Downloading Projectm source"
    git clone $projSRC /home/brain/github/projectm

    # Build ProjectM
    echo "Building & Installing ProjectM"
    ./configure --enable-gles && make -j4 && sudo make install

fi