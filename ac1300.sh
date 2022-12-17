#!/bin/bash

echo "Cloneing github repo"

git clone https://github.com/zapcodes/rtl88x2bu.git

echo "Going into directory!"


cd rtl88x2bu

echo "Makeing initialized driver install"

sudo apt-get install git linux-headers-amd64 build-essential


VER=$(sed -n 's/\PACKAGE_VERSION="\(.*\)"/\1/p' dkms.conf)
sudo rsync -rvhP ./ /usr/src/rtl88x2bu-${VER}
sudo dkms add -m rtl88x2bu -v ${VER}
sudo dkms build -m rtl88x2bu -v ${VER}
sudo dkms install -m rtl88x2bu -v ${VER}
sudo modprobe 88x2bu

