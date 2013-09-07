#!/bin/bash

echo "Starting installation"
echo "Creating temporary directory"
mkdir tmp
cd tmp

# Download all packages
echo "Downloading packages"
wget http://ftp.ps.pl/pub/apache//apr/apr-1.4.8.tar.gz
wget http://ftp.ps.pl/pub/apache//apr/apr-util-1.5.2.tar.gz
wget http://ftp.ps.pl/pub/apache/logging/log4cxx/0.10.0/apache-log4cxx-0.10.0.tar.gz
echo "Packages downloaded"

echo "Extracting packages"
tar -xvf apache-log4cxx-0.10.0.tar.gz
tar -xvf apr-1.4.8.tar.gz 
tar -xvf apr-util-1.5.2.tar.gz
echo "Packages extracted"

echo "Fixing bugs"
cp ../log4cxx_fix/console.cpp apache-log4cxx-0.10.0/src/examples/cpp/
cp ../log4cxx_fix/inputstreamreader.cpp apache-log4cxx-0.10.0/src/main/cpp/
cp ../log4cxx_fix/socketoutputstream.cpp apache-log4cxx-0.10.0/src/main/cpp/
echo "Bugs fixed"

echo "Installing apr"
cd apr-1.4.8
sudo ./configure --prefix=/usr/local/apr
sudo make -j 8
sudo make install
cd ..
echo "apr installed"

echo "Installing apr-util"
cd apr-util-1.5.2
sudo ./configure --prefix=/usr/local/apr --with-apr=/usr/local/apr/
sudo make -j 8
sudo make install
cd ..
echo "apr-util installed"

echo "Installing log4cxx"
cd apache-log4cxx-0.10.0
sudo ./configure --with-apr=/usr/local/apr --with-apr-util=/usr/local/apr/
sudo make -j 8
sudo make install
cd ..
echo "log4cxx installed"

echo "Cleaning up"
cd ..
rm -r tmp
sudo ldconfig -v
echo "Installation completed"
