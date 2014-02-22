#!/bin/bash

add-apt-repository ppa:bumblebee/stable -y
apt-get update
apt-get install -y bumblebee bumblebee-nvidia primus primus-libs-ia32 linux-headers-generic
