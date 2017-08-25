#!/bin/sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install vim -y
sudo apt-get install zsh -y
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt autoremove -y

ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''
sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config

sudo curl https://raw.githubusercontent.com/davidglaeseman/ohmyzshsetup/master/setup.sh --output ~/setupOhMyZsh.sh

sudo sh ~/setupOhMyZsh.sh
sudo rm ~/setupOhMyZsh.sh
