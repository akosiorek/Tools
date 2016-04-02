#!/bin/bash

#	Add repos
echo "Adding repos"

#tlp battery saver
add-apt-repository -y ppa:linrunner/tlp
# nvidia driver repos
add-apt-repository -y ppa:graphics-drivers/ppa

#prime-indicator
add-apt-repository -y ppa:nilarimogard/webupd8

#cmake
add-apt-repository -y ppa:george-edison55/cmake-3.x

#chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

echo "Updating system"
apt-get update
apt-get upgrade -y

echo "Setting up Nvidia Prime"
apt-get install -y nvidia-352 nvidia-prime nvidia-settings prime-indicator


echo "Installing general programmes"
#	General programmes
apt-get install -y google-chrome-stable
apt-get install -y doxygen 
apt-get install -y git
apt-get install -y gitk
apt-get install -y subversion
apt-get install -y vim
apt-get install -y vimdiff
apt-get install -y xbacklight
apt-get install -y cmake cloc
apt-get install -y okular

apt-get install -y guake htop
apt-get install -y kile texlive texlive-lang-polish
apt-get install -y latex-beamer latex-xcolor preview-latex-style texlive-latex-extra texlive-latex-recommended texlive-latex3 texlive-science
apt-get install -y texlive-font-utils 
apt-get install -y shutter
apt-get install -y gimp
apt-get install -y calibre
apt-get install -y cmake-curses-gui
apt-get install -y pdftk

# power management
apt-get install -y tlp tlp-rdw
tlp start

echo "Installing libraries"
#	Libraries
apt-get install -y build-essential g++ gfortran libusb-1.0 libqt4-dev
apt-get install -y libeigen3-dev libvtk5-qt4-dev libflann-dev
apt-get install -y openjdk-7-jre openjdk-7-jdk
apt-get install -y libboost-all-dev libboost-mpi-dev libboost-doc
#apt-get install -y libcr-dev mpich2 mpich2-doc
apt-get install -y libprotobuf-dev protobuf-compiler
apt-get install -y libgflags-dev libgoogle-glog-dev
apt-get install -y libatlas-base-dev libatlas-base-dev libatlas-doc libopenblas-base libopenblas-dev
apt-get install -y python-pip libpython2.7-dev python-matplotlib
pip install theano scipy numpy  nose

ldconfig -v

#	Configure
# set font size
gsettings set org.cinnamon.desktop.interface text-scaling-factor 1.1

# turn off bluetooh at login
sh -c "sed -i '$ i\rfkill block bluetooth' /etc/rc.local"

#	Random apps
apt-get install -y skype qt4-qtconfig # qtconfig let's you change appearance
apt-get install -y unetbootin

echo "Finished"
