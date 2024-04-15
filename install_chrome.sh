#!/bin/bash

#Save this script to a file, for example, install_chrome.sh. Make the script executable by running

#chmod +x install_chrome.sh

#Then, run the script with:

#./install_chrome.sh


# Add the Google Chrome repository key
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Add the Google Chrome repository to the system
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Update the package list
sudo apt update

# Install Google Chrome
sudo apt install google-chrome-stable -y
