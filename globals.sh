#!/bin/sh
# Install Required Items && Update / Upgrade
    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt-get dist-upgrade -y
    sudo apt-get install vim -y
    sudo apt-get install zsh -y
    sudo apt-get install curl -y
    sudo apt-get install git -y
    sudo apt autoremove -y

# Add SSH Keygen
    ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''
    sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
    echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config

# Make Oh My ZSH Install Script
touch ~/ohmyszh.sh
    echo '' > ~/ohmyszh.sh
    echo 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/loket/oh-my-zsh/feature/batch-mode/tools/install.sh)" -s --batch || {' >> ~/ohmyszh.sh
    echo 'echo "Could not install Oh My Zsh" >/dev/stderr' >> ~/ohmyszh.sh
    echo 'exit 1' >> ~/ohmyszh.sh
    echo '}' >> ~/ohmyszh.sh
    echo 'curl https://raw.githubusercontent.com/carloscuesta/materialshell/master/zsh/materialshell.zsh-theme --output  ~/.oh-my-zsh/themes/materialshell.zsh-theme' >> ~/ohmyszh.sh
    echo "echo 'ZSH_THEME=\"materialshelloceanic\"' >> ~/.zshrc  "  >> ~/ohmyszh.sh

# Run Script / Delete Script
sudo sh ~/setupOhMyZsh.sh
sudo rm ~/setupOhMyZsh.sh
