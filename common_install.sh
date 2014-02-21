#!/bin/bash

echo "Updating system"
sudo apt-get update
sudo apt-get upgrade

echo "Installing general programmes"
#	General programmes
sudo apt-get install -y cmake doxygen git gitk subversion vim xbacklight qtcreator google-chrome-stable python-pip

#
pip install numpy scipy

echo "Installing libraries"
#	Libraries
sudo apt-get install -y build-essential g++ libusb-1.0 libqt4-dev
sudo apt-get install -y libeigen3-dev libvtk5-qt4-dev libflann-dev
sudo apt-get install -y openjdk-7-jre

sudo ldconfig -v
echo "Finished"
