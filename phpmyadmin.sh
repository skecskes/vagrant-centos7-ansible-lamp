#!/bin/bash

DIRECTORY="/var/www/phpmyadmin"

if [ ! -d "$DIRECTORY" ]; then
    echo "Downloading phpmyadmin stable"
    cd /var/www
    git clone --depth 1 -b STABLE --single-branch https://github.com/phpmyadmin/phpmyadmin.git

    # echo "Copy parameters.yml and create database"
    # cp -f /vagrant/config/symfony/parameters.yml /var/www/symfony/app/config/parameters.yml

    echo "Copy apache conf"
    cp -r files/apache/phpmyadmin.tpl /etc/httpd/conf.d/phpmyadmin.conf

    echo "Setting firewall rules for phpmyadmin"
    firewall-cmd --zone=public --add-port=9000/tcp --permanent
    firewall-cmd --reload

    echo "Restarting httpd"
    systemctl restart httpd
else
    echo "webgrind directory already exists"
fi
