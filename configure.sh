#!/bin/bash

#	set font size
gsettings set org.cinnamon.desktop.interface text-scaling-factor 1.1

#	turn off bluetooh at login
sh -c "sed -i '$ i\rfkill block bluetooth' /etc/rc.local"

echo "synclient VertTwoFingerScroll=1" >> ~/.profile
echo "xbacklight = 0" >> ~/.profile

cp .bashrc .gitconfig ~/
cp -r .bin ~/
