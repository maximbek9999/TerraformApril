#!/bin/bash
sudo yum install httpd -y
sudo echo "<h1>Hello from ${environment} EC2<h1>" >> /var/www/html/index.html
sudo systemctl start httpd
