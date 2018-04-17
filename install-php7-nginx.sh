#!/bin/bash
# Install PHP 7.1
sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y php7.1
sudo apt-get install -y php7.1-cli
sudo apt-get install -y php7.1-json
sudo apt-get install -y php7.1-opcache
sudo apt-get install -y php7.1-fpm
sudo apt-get install -y php7.1-xml
sudo apt-get install -y php7.1-xsl
sudo apt-get install -y php7.1-mysql
sudo apt-get install -y php7.1-sqlite3
sudo apt-get install -y php7.1-json
sudo apt-get install -y php7.1-curl
sudo apt-get install -y php7.1-cgi
sudo apt-get install -y php7.1-imap
sudo apt-get install -y php7.1-cli
sudo apt-get install -y php7.1-mcrypt
sudo apt-get install -y php7.1-common
sudo apt-get install -y php7.1-mbstring
sudo apt-get install -y php7.1-intl
sudo apt-get install -y php7.1-zip
sudo apt-get install -y php7.1-bcmath
sudo apt-get install -y nginx

sudo systemctl restart php7.1-fpm.service

sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update
sudo apt-get install -y python-certbot-nginx

# Install Composer & Make Global
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
## Install And Go!
