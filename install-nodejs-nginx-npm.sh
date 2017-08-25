#!/bin/bash
# Since Ubuntu comes with Node JS 4.6, we should upgrade to 6+
sudo apt-get update
sudo apt-get upgrade -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y nginx
