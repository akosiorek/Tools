#!/bin/bash

#	set font size
gsettings set org.cinnamon.desktop.interface text-scaling-factor 1.1

#	turn off bluetooh at login
sh -c "sed -i '$ i\rfkill block bluetooth' /etc/rc.local"

source gitconfig.sh
source autoboot.sh
