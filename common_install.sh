#!/bin/bash

#	Add repos
echo "Adding repos"
add-apt-repository ppa:bumblebee/stable -y

#tlp battery saver
add-apt-repository ppa:linrunner/tlp

echo "Updating system"
apt-get update
apt-get upgrade -y

echo "Installing general programmes"
#	General programmes
apt-get install -y doxygen 
apt-get install -y git
apt-get install -y gitk
apt-get install -y subversion
apt-get install -y vim
apt-get install -y vimdiff
apt-get install -y xbacklight
apt-get install -y cmake
apt-get install -y okular

apt-get install -y python-pip
apt-get install -y python-numpy python-scipy python-matplotlib python-tk
apt-get install -y guake htop
apt-get install -y kile texlive texlive-lang-polish
apt-get install -y latex-beamer latex-xcolor preview-latex-style texlive-latex-extra texlive-latex-recommended texlive-latex3
apt-get install -y shutter
apt-get install -y gimp
apt-get install -y bumblebee bumblebee-nvidia primus primus-libs-ia32 linux-headers-generic

# power management
apt-get install -y tlp tlp-rdw
tlp start

source calibre_install.sh
source chrome_install.sh

echo "Installing libraries"
#	Libraries
apt-get install -y build-essential g++ libusb-1.0 libqt4-dev
apt-get install -y libeigen3-dev libvtk5-qt4-dev libflann-dev
apt-get install -y openjdk-7-jre openjdk-7-jdk
apt-get install -y libboost-all-dev libboost-mpi-dev libboost-doc
apt-get install -y libopenblas-base libopenblas-dev
apt-get install -y libcr-dev mpich2 mpich2-doc
apt-get install -y libprotobuf-dev protobuf-compiler
apt-get install -y libgflags-dev libgoogle-glog-dev
apt-get install -y libatlas-base-dev libatlas-base-dev libatlas-doc libopenblas-base libopenblas-dev

ldconfig -v

#	Configure
./configure.sh

#	Random apps
apt-get install -y skype
apt-get install -y unetbootin

echo "Finished"
