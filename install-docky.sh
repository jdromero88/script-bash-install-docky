#!/bin/bash
# Install Docky Linux Mint 20.1 Ulyssa
# The instructions I got it here:
# https://askubuntu.com/a/1237413/1049892
echo "Install Docky!"
varPath=`pwd`
mkdir docky
pushd ${varPath}/docky
# Download dependencies to install Docky
wget http://archive.ubuntu.com/ubuntu/pool/universe/g/gnome-sharp2/libgconf2.0-cil_2.24.2-4_all.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/multiarch-support_2.27-3ubuntu1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgnome-keyring/libgnome-keyring-common_3.12.0-1build1_all.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgnome-keyring/libgnome-keyring0_3.12.0-1build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/g/gnome-keyring-sharp/libgnome-keyring1.0-cil_1.0.0-5_amd64.deb
# Install the dependencies
sudo apt-get install ./*.deb
# Download Docky
wget http://archive.ubuntu.com/ubuntu/pool/universe/d/docky/docky_2.2.1.1-1_all.deb
# Install Docky
sudo apt-get install ./docky_2.2.1.1-1_all.deb
