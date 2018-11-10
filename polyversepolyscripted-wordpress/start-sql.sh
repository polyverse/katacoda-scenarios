#!/bin/sh

echo "Starting MySQL to be used for wordpress"
docker run --name mysql-cont -e MYSQL_ROOT_PASSWORD=qwerty -d mysql:5.7

clear
echo "MySQL ready..."