#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y


sudo apt-get install vim -y
sudo apt-get install zsh -y
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt autoremove -y

sudo apt-get install -y php7.2
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php7.2
sudo apt-get install -y libphp7.2-embed
sudo apt-get install -y php7.2-fpm
sudo a2enconf php7.2-fpm
systemctl restart apache2
sudo apt-get install -y php7.2-xml
sudo apt-get install -y php7.2-xsl
sudo apt-get install -y php7.2-mysql
sudo apt-get install -y php7.2-sqlite3
sudo apt-get install -y php7.2-json
sudo apt-get install -y php7.2-curl
sudo apt-get install -y php7.2-cgi
sudo apt-get install -y php7.2-imap
sudo apt-get install -y php7.2-cli
sudo apt-get install -y php7.2-common
sudo apt-get install -y php7.2-mbstring
sudo apt-get install -y php7.2-intl
sudo apt-get install -y php7.2-zip
sudo apt-get install -y php7.2-bcmath

sudo a2dismod mpm_event && sudo a2enmod mpm_prefork && sudo a2enmod php7.2
systemctl restart apache2

# Edit Login Message
sudo touch /etc/motd
sudo echo '# System Login Initiated' > /etc/motd
sudo echo 'Welcome to: '$(hostname)'. You may begin making codes now.' >> /etc/motd
sudo echo '' >> /etc/motd
sudo echo '' >> /etc/motd


# Configure Server Time
sudo touch /etc/timezone
sudo echo 'US/Arizona' > /etc/timezone
sudo timedatectl set-timezone US/Arizona

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

sudo apt-get install composer -y

# install certbot
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update
sudo apt-get install -y python-certbot-apache
touch ~/certbot.sh
echo '#!/bin/bash' > ~/certbot.sh
echo 'sudo certbot --apache' >> ~/certbot.sh
chmod +x ~/certbot.sh

rm ~/php72.sh

sudo reboot
