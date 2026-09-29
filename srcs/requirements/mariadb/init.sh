#!/bin/bash

service mariadb start

mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -e "CREATE USER IF NOT EXISTS 'wp_user'@'%' IDENTIFIED BY 'wp_password';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'%';"
mysql -e "FLUSH PRIVILEGES;"

service mariadb stop

exec mysqld --user=mysql
