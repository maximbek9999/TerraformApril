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
mysql -uroot -pwordpress -e "CREATE DATABASE wordpress;" -e "CREATE USER wordpress@'${wp_ec2_private_ip}' IDENTIFIED BY 'wordpress';" -e "GRANT ALL ON wordpress.* TO wordpress@'${wp_ec2_private_ip}';" -e "FLUSH PRIVILEGES;" -e "USE wordpress;" 
sudo systemctl restart mariadb.service