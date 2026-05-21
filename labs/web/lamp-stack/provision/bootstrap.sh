#!/usr/bin/env bash

set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

# Update packages.
apt-get update -y

# Upgrade packages.
apt-get upgrade -y

# Provisioning helpers.
apt-get install -y git software-properties-common

# Apache.
apt-get install -y apache2

# Enable Apache modules.
a2enmod rewrite

# Add the PHP package source used by this legacy lab.
apt-add-repository -y ppa:ondrej/php
apt-get update

apt-get install -y php5

# PHP Apache module.
apt-get install -y libapache2-mod-php5

# Restart Apache after enabling PHP.
service apache2 restart

# PHP modules.
apt-get install -y php5-common
apt-get install -y php5-mcrypt

# Set MySQL user and password.
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"

# MySQL.
apt-get install -y mysql-server

# PHP MySQL library.
apt-get install -y php5-mysql

# Restart Apache after installing the PHP extensions.
service apache2 restart
