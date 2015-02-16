#!/bin/bash

echo "Installing MySQL"
yum install -y mariadb-server mariadb

echo "Adding MySQL service to autostart"
systemctl enable mariadb.service

echo "Starting MySQL service"
systemctl start mariadb.service

echo "Add port 3306 to firewalld"
firewall-cmd --zone=public --add-port=3306/tcp --permanent
firewall-cmd --reload

#Reload the database
echo "Setting DB permissions for root"
mysql -u root <<< "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root <<< "UPDATE mysql.user SET Password=PASSWORD('toor') WHERE User='root';"
mysql -u root <<< "FLUSH PRIVILEGES;"

echo "MySQL installed"
