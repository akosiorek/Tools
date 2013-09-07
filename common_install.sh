#!/bin/bash

echo "Updating system"
sudo apt-get update
sudo apt-get upgrade

echo "Installing general programmes"
#	General programmes
sudo apt-get install -y
cmake
doxygen
git
gitk
subersion
vim
xbacklight

echo "Installing libraries"
#	Libraries
sudo apt-get install -y
build-essential
g++
libusb-1.0

sudo ldconfig -v
echo "Finished"
