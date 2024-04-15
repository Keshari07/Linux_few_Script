#!/bin/bash

# Update the package list
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Perform distribution upgrade (if any new release is available)
sudo apt dist-upgrade -y

# Remove unnecessary packages
sudo apt autoremove -y

# Remove orphaned packages
sudo apt autoclean

# Display a message indicating the update and upgrade process is complete
echo "Ubuntu update and upgrade completed."
