#!/bin/bash

# Download the pengurice.sh script
curl -LO https://raw.githubusercontent.com/p3nguin-kun/pengurice/main/pengurice.sh

# Run the pengurice.sh script
bash pengurice.sh

# Remove zsh and related packages
sudo apt remove --purge zsh* -y

# Clean up package cache
sudo apt clean -y

# Autoremove unnecessary packages
sudo apt autoremove -y
