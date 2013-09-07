#!/bin/bash

echo "Installing GSL - Gnu Scientific Library"

mkdir tmp
cd tmp

echo "Downloading package"
wget http://ftp.task.gda.pl/pub/gnu/gsl/gsl-1.16.tar.gz
echo "Package downloaded"

echo "Extracting package"
tar -xf	gsl-1.16.tar.gz 
echo "Package extracted"

cd gsl-1.16

echo "Installing package"
sudo ./configure
sudo make -j 8
sudo make install
echo "Package installed"

echo "Cleaning up"
cd ..
cd ..
rm -r tmp
sudo ldconfig -v
echo "Installation finished"
