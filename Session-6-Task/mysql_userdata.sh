#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install epel -y
sudo yum install mariadb -y
sudo yum install mariadb-server -y
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service
sudo mysql_secure_installation <<EOF

y
wordpress
wordpress
y
y
y
y
EOF
mysql -uroot -pwordpress -e "CREATE DATABASE wordpress;" -e "CREATE USER wordpress@'%' IDENTIFIED BY 'wordpress';" -e "GRANT ALL ON wordpress.* TO wordpress@'%';" -e "FLUSH PRIVILEGES;" -e "USE wordpress;" 
sudo systemctl restart mariadb.service