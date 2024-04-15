#!/bin/bash

# Update the package list
sudo apt update

# Install the OpenSSH server
sudo apt install openssh-server -y

# Start the OpenSSH server
sudo service ssh start
