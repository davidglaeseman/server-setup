#!/bin/bash
# Install PHP 7.1
sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y php7.1
sudo apt-get install -y apache2
sudo apt-get install -y libapache2-mod-php7.1
sudo apt-get install -y libphp7.1-embed
sudo apt-get install -y php7.1-fpm
sudo a2enconf php7.1-fpm
systemctl restart apache2
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

sudo a2dismod mpm_event && sudo a2enmod mpm_prefork && sudo a2enmod php7.1

sudo chmod -R 755 storage bootstrap
sudo chgrp -R www-data storage bootstrap/cache
sudo chmod -R ug+rwx storage bootstrap/cache

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-apache


# Install MYSQL
sudo apt-get install -y mysql-server
# enter the password: 

# Install Composer & Make Global
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
