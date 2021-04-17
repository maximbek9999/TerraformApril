#! /bin/bash
sudo yum update -y
sudo amazon-linux-extras install epel -y
sudo amazon-linux-extras install php8.0 -y
sudo yum install mariadb -y
sudo yum install -y httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
cd /home/ec2-user
sudo wget 'https://wordpress.org/latest.tar.gz'
sudo tar -xzvf latest.tar.gz
cd /home/ec2-user/wordpress
sudo cp -r /home/ec2-user/wordpress/* /var/www/html/
sudo chown -R apache:apache /var/www/html/
sudo systemctl restart httpd.service



