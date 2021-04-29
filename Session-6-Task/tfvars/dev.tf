env = "dev"
project_name = "dev-webserver-deployment"
instance_type = "t2.micro"
vpc_cidr_block = "10.0.0.0/16"
public_rt_cidr_block = "0.0.0.0/0"
pub_sub_a_cidr_block = "10.0.1.0/24"
pub_sub_b_cidr_block = "10.0.2.0/24"
pub_sub_c_cidr_block = "10.0.3.0/24"
private_rt_cidr_block = "0.0.0.0/0"
priv_sub_a_cidr_block = "10.0.11.0/24"
priv_sub_b_cidr_block = "10.0.12.0/24"
priv_sub_c_cidr_block = "10.0.13.0/24"
webserver_sg_tcp_ports = ["22", "80", "3306"]
webserver_sg_cidr_block = "0.0.0.0/0"
webserver_ingress_protocol_type = "tcp"
alb_ingress_protocol_type = "tcp"
alb_sg_cidr_block = "0.0.0.0/0"
alb_sg_tcp_port = "80"
ingress_mysql_port = "3306"
mysql_ingress_protocol_type = "tcp"
mysql_sg_cidr_block = "0.0.0.0/0"