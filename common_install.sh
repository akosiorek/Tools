#!/bin/bash

#	Add repos
echo "Adding repos"
add-apt-repository ppa:bumblebee/stable -y
echo "deb http://dl.google.com/linux/deb/ stable non-free main" >> /etc/apt/sources.list
wget -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

echo "Updating system"
apt-get update
apt-get upgrade

echo "Installing general programmes"
#	General programmes
apt-get install -y doxygen 
apt-get install -y git
apt-get install -y gitk
apt-get install -y subversion
apt-get install -y vim
apt-get install -y xbacklight
apt-get install -y qtcreator
apt-get install -y google-chrome-stable
apt-get install -y python-pyp
apt-get install -u guake
apt-get install -y kile texlive texlive-lang-polish
apt-get install -y shutter
apt-get install -y gimp
apt-get install -y google-chrome-stable
apt-get install -y bumblebee bumblebee-nvidia primus primus-libs-ia32 linux-headers-generic
./calibre_install.sh

#
pip install numpy scipy

echo "Installing libraries"
#	Libraries
 apt-get install -y build-essential g++ libusb-1.0 libqt4-dev
 apt-get install -y libeigen3-dev libvtk5-qt4-dev libflann-dev
 apt-get install -y openjdk-7-jre openjdk-7-jdk

 ldconfig -v
echo "Finished"
