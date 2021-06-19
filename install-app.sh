#!/bin/bash

echo "=== Install apps ==="

OHMYZSH_DIR="/home/$USER/.oh-my-zsh"

if [ ! -d "${OHMYZSH_DIR}" ]; then
	echo "Install zsh"
	apt install zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install VIM
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim

# Install Midnight Commander
sudo apt install -y mc

# Install Python3
sudo apt-get update
sudo apt-get install -y python3.6

# Install Docker
sudo apt-get update
curl -fsSL https://get.docker.com -o docker-script.sh
sudo sh docker-script.sh
sudo dpkg --configure -a

#Add a user to the Docker group
sudo usermod -aG docker $USER

# Install NVM
mkdir .nvm
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.zshrc

# Install Node
# TODO

# Install NPM
# TODO

# Install VS Code
sudo apt install code -y

# Autoremove
sudo apt autoremove -y

echo "Done"
