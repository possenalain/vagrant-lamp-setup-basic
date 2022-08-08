#update packages
apt-get update -y

#upgrade packages
apt-get upgrade -y

#git installation
apt-get install -y git

#apache
apt-get install -y apache2

#enable apache mods
a2enmod rewrite

# #add onrej ppa repo
apt-add-repository ppa:ondrej/php
apt-get update

apt-get install -y php5

#php apache mod
apt-get install -y libapache2-mod-php5

#restart apache
servicee apache2 restart

#php modules

apt-get install -y php5-common
apt-get install -y php5-mcrypt

#set mysql user and password
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"

#install mysql

apt-get install -y mysql-server

#PHP-MYSQL lib
apt-get install -y php5-mysql

#restart apache
sudo service apache2 restart

