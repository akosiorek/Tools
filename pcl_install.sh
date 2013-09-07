#!/bin/bash

echo "Installing pcl from git"
echo "Cloning into github"

echo "Resolving dependecies"
sudo apt-get install -y git libeigen3-dev libopenni-dev libeigen3-dev libqt4-dev libvtk5-qt4-dev libflann-dev libusb-1.0
mkdir tmp
cd tmp
git clone https://github.com/PointCloudLibrary/pcl pcl-trunk
cd pcl-trunk
mkdir build
cd build
sudo cmake -DCMAKE_BUILD_TYPE=Release .. 
sudo make -j8
sudo make install
cd ..
cd ..
cd ..
sudo rm -r tmp
sudo ldconfig -v
echo "Finished"
