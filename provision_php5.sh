#!/bin/bash
#installare php5
sudo apt install -y php libapache2-mod-php
sudo apt install php-curl php-gd php-json php-mbstring php-xml -y
a2enmod php8.0

