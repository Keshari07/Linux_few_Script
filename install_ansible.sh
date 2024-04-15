#!/bin/bash

# Update the package list on both server and client
sudo apt update

# Install Ansible on the Ansible control server
sudo apt install -y ansible

# Enable passwordless sudo for the user running Ansible (on the Ansible control server)
echo "$(whoami) ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/ansible-nopasswd

# Install OpenSSH server on the Ansible managed node (if not already installed)
sudo apt install -y openssh-server

# Allow password authentication for SSH on the Ansible managed node
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh

# Display a message indicating the installation process is complete
echo "Ansible installation completed on both the server and client."
