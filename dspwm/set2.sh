#!/bin/bash

# Ensure the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Please run with sudo or as root."
   exit 1
fi

# Define variables
FOLDER_NAME="bld"
TARGET_USER="slim"
TARGET_HOME="$HOME"

# Move the folder and change ownership
mv "$FOLDER_NAME" "$TARGET_HOME/slim"
chown -R "$TARGET_USER:$TARGET_USER" "$TARGET_HOME/slim/$FOLDER_NAME"

# Install necessary packages
apt-get update
apt-get -y install curl wget
apt-get -y install python3-full python3-pip libpangocairo-1.0-0 python3-cffi python3-xcffib

# Setup Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --profile complete --default-toolchain nightly
source $HOME/.cargo/env
apt-get update

# Install Go
wget https://go.dev/dl/go1.22.6.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.22.6.linux-amd64.tar.gz
rm go1.22.6.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' | tee -a /etc/profile /etc/bash.bashrc
source /etc/profile

# Install NodeJS
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
apt-get install -y nodejs

# Setup Lua
curl -L -R -O https://www.lua.org/ftp/lua-5.4.7.tar.gz
tar zxf lua-5.4.7.tar.gz
cd lua-5.4.7
make all test
cd ..
rm -rf lua-5.4.7 lua-5.4.7.tar.gz

# Setup Perl
wget https://www.cpan.org/src/5.0/perl-5.40.0.tar.gz
tar -xzf perl-5.40.0.tar.gz
cd perl-5.40.0
./Configure -des -Dprefix=/usr/local
make
sudo make install
cd ..
rm -rf perl-5.40.0 perl-5.40.0.tar.gz

# Setup rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /etc/profile
echo 'eval "$(rbenv init -)"' >> /etc/profile
source /etc/profile

# Download the JDK packages
wget https://download.oracle.com/java/22/latest/jdk-22_linux-x64_bin.deb
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb

# Install the JDK packages using dpkg
dpkg -i jdk-22_linux-x64_bin.deb
dpkg -i jdk-21_linux-x64_bin.deb
dpkg -i jdk-17_linux-x64_bin.deb

# Clean up the downloaded files
rm jdk-22_linux-x64_bin.deb
rm jdk-21_linux-x64_bin.deb
rm jdk-17_linux-x64_bin.deb

# Enable Bookworm backports
echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free-firmware' | sudo tee /etc/apt/sources.list.d/bookworm-backports.list
echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free-firmware' | sudo tee /etc/apt/sources.list.d/bookworm-backports.list
sudo apt update

echo "-------------------------------------------------------------------------------"
read -r -p "
   
               [0;33m---BOOKWORM BACKPORTS ENABLED AND UPDATED---[0m
           

   "

sudo apt-get install -t bookworm-backports linux-image-amd64/bookworm-backports linux-headers-amd64/bookworm-backports firmware-linux
echo ""
echo "[0;33mPlease reboot into your new kernel when able.[0m"

# Update and upgrade system
sudo apt update
sudo apt-get upgrade -y

# Add user slim to sudoers
sudo usermod -aG sudo slim
echo 'slim ALL=(ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers.d/slim

# Switch to user slim
su - slim
