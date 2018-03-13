#!/bin/bash  
#***********************************
# Variables for setup
#***********************************
time=2
#***********************************
# Get Updates
#***********************************
echo "******************************************"
echo "Get updates... \n"
apt-get update
echo "\n Done with updates. \n"
sleep "$time"
#***********************************
# Get Upgrades
#***********************************
echo "******************************************"
echo "Get upgrade... \n"
apt-get upgrade -y
echo "\n Done with upgrade. \n"
sleep "$time"
#***********************************
# JDK/JRE install
#***********************************
echo "******************************************"
echo "JRE install...\n"
apt-get install default-jre -y
echo "\nDone with JRE.\n"
sleep $time
echo "\nJDK install...\n"
apt-get install default-jdk -y
echo "\nDone with JDK.\n"
sleep "$time"
#***********************************
# JAVA8
#***********************************
echo "******************************************"
echo "Add JAVA8 repository\n"
add-apt-repository ppa:webupd8team/java
echo "\nGet updates...\n"
apt-get update
echo "\nDone with updates.\n"
echo "\nOracle Java8 install...\n"
apt-get install oracle-java8-installer -y
echo "\nDone with Oracle Java8.\n"
sleep "$time"
#***********************************
# MAVEN
#***********************************
echo "******************************************"
echo "MAVEN install...\n"
apt-get install maven -y
echo "\nDone with MAVEN.\n"
sleep "$time"
#***********************************
# GITHUB
#***********************************
echo "******************************************"
echo "GITHUB install...\n"
apt-get install git -y
echo "\nDone with GITHUB.\n"
sleep "$time"
#***********************************
# MC
#***********************************
echo "******************************************"
echo "MC install...\n"
apt-get install mc -y
echo "\nDone with MC.\n"
sleep "$time"
#***********************************
# NODEJS
#***********************************
echo "******************************************"
echo "NODEJS install...\n"
apt-get install nodejs -y
echo "\nDone with NODEJS.\n"
sleep $time
#***********************************
# NPM
#***********************************
echo "******************************************"
echo "NPM install...\n"
apt-get install npm -y
echo "\nDone with NPM.\n"
sleep "$time"
#***********************************
# CURL
#***********************************
echo "******************************************"
echo "CURL install...\n"
apt-get install curl -y
echo "\nDone with CURL.\n"
sleep "$time"
#***********************************
# Apache2
#***********************************
echo "******************************************"
echo "Apache2 install...\n"
apt-get install apache2 -y
echo "\nDone with Apache2.\n"
echo "\nAdd Apache2 to the firewall.\n"
ufw allow 'Apache Full'
ufw status
echo "\nAdded Apache2 to the firewall.\n"
sleep "$time"
#***********************************
# PHP
#***********************************
echo "******************************************"
echo "PHP install...\n"
apt-get install php -y
echo "\nDone with PHP.\n"
sleep "$time"
#***********************************
# MariaDB
#***********************************
echo "******************************************"
echo "MariaDB install...\n"
apt-get install software-properties-common -y
sleep "$time"
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sleep "$time"
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu xenial main'
sleep "$time"
echo "\nGet updates... \n"
apt-get update
echo "\n Done with updates. \n"
apt-get install mariadb-server -y
echo "\n Done with MariaDB.\n"
echo "mysql stop...\n"
service mysql stop
echo "mysql_install_db...\n"
mysql_install_db
echo "mysql start...\n"
service mysql start
echo "mysql_secure_installation...\n"
mysql_secure_installation
sleep "$time"
#***********************************
# PHPMYADMIN
#***********************************
echo "******************************************"
echo "PHPMYADMIN install...\n"
apt-get install phpmyadmin php-mbstring php-gettext -y
echo "\nDone with PHPMYADMIN.\n"
echo "\n send mcrypt...\n"
phpenmod mcrypt
echo "\n done mcrypt...\n"
echo "\n send mbstring...\n"
phpenmod mbstring
echo "\n done mbstring...\n"
echo "\n restart apache2...\n"
systemctl restart apache2
echo "\n done restarting apache2\n"
sleep "$time"
#***********************************
# End of the Script
#***********************************
echo "END OF THE SCRIPT"
sleep 10
