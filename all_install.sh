#!/bin/bash

echo "Starting"

#	Setting up bash
cp .bashrc ~/
echo "synclient VertTwoFingerScroll=1" >> ~/.profile
echo "xbacklight = 0" >> ~/.profile
chmod 666 ~/.bashrc

#	Common tools
sudo ./common_install.sh

echo "Finished"`
