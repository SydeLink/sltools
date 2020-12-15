#!/bin/bash

$DLDIR = /home/user/Downloads

#Install Visual Studio Code
vsLoc=/home/user/Downloads
echo "Download VS Code .deb package"
wget -q -P $DLDIR -O VSCode.deb https://aka.ms/linux-arm64-deb

echo "Installing VS Code"
apt update
apt install -y ./$DLDIR/VSCode.deb
;;

#Install GParted
echo "Installing GParted"
apt install -y gparted
;;

#Install Terminator Terminal
echo "Installing Terminator Terminal"
apt install -y terminator
;;

#Install git
echo "Installing Git, please congiure git later..."
apt install git -y
;;

#Install AppImageLauncher
echo "Download AppImageLauncher .deb package"
wget -q -P $DLDIR -O AppImageLauncher.deb https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_arm64.deb

echo "Installing AppImageLauncher"
apt update
apt install -y ./$DLDIR/AppImageLauncher.deb
;;

#UPDATE:Install OCS-URL https://www.opencode.net/dfn2/ocs-url/blob/master/scripts/package
echo "Download Pling-Store AppImage"
wget -q -P $DLDIR -O AppImageLauncher.deb https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_arm64.deb

echo "Installing Pling-Store with AppImageLauncher"
apt update
apt install -y ./$DLDIR/AppImageLauncher.deb
;;

git config --global user.name "Blaque with a Q"
git config --global user.email sydelink@gmail.com
