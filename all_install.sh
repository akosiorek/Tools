#!/bin/bash

echo "Starting"
#	Common tools
sudo ./common_install.sh

#	Libs
sudo ./gsl_install.sh
sudo ./boost_install.sh
sudo ./opencv_install.sh
sudo ./pcl_install.sh

#	log4cxx
sudo log4cxx/./install.sh

echo "Finished"`
