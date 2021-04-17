variable "vpc_name" {
  type        = string
  description = "vpc name"
}

variable "env" {
  type        = string
  description = "environment name"
}

variable "project_name" {
  type        = string
  description = "eroject name"
}
variable "vpc_cidr_block" {
  type        = string
  description = "vpc cidrs block"
}

variable "public_rt_cidr_block" {
  type        = string
  description = "[ublic route table cidr block]"
}

variable "public_rt_name" {
  type        = string
  description = "public rt name"
}

variable "pub_sub_name-1" {
  type        = string
  description = "firts public subnet name"
}

variable "pub_sub_1_cidr_block" {
  type        = string
  description = "cidr block for fisrt public subnet"
}

variable "pub_sub_name-2" {
  type        = string
  description = "second public subnet name"
}

variable "pub_sub_2_cidr_block" {
  type        = string
  description = "cidr block for second public subnet"
}

variable "pub_sub_name-3" {
  type        = string
  description = "third public subnet name"
}

variable "pub_sub_3_cidr_block" {
  type        = string
  description = "cidr block for third public subnet"
}
variable "internet_gw_name" {
  type        = string
  description = "internet gateway name"
}

variable "private_rt_cidr_block" {
  type        = string
  description = "private route table cidr block]"
}

variable "private_rt_name" {
  type        = string
  description = "private rt name"
}

variable "priv_sub_name-1" {
  type        = string
  description = "firts private subnet name"
}

variable "priv_sub_1_cidr_block" {
  type        = string
  description = "cidr block for fisrt public subnet"
}

variable "priv_sub_name-2" {
  type        = string
  description = "second private subnet name"
}

variable "priv_sub_2_cidr_block" {
  type        = string
  description = "cidr block for second private subnet"
}

variable "priv_sub_name-3" {
  type        = string
  description = "third private subnet name"
}

variable "priv_sub_3_cidr_block" {
  type        = string
  description = "cidr block for third private subnet"
}

variable "nat_gw_name" {
  type        = string
  description = "nat gateway name"
}

variable "nat_eip_name" {
  type        = string
  description = "elastic ip name associated with nat gateway"
}

variable "key_pair_name" {
  type        = string
  description = "terrafrom key pair which will be used to acces wordpress and sql servers"
}

variable "wp_instance_type" {
  type        = string
  description = "wordpress instance type"
}
variable "wp_sg_name" {
  type        = string
  description = "wordpress instance security group name"
}

variable "wp_ingress_http_port" {
  type        = number
  description = "ingress http port for wordpress ec2 security group"
}

variable "wp_ingress_protocol_type" {
  type        = string
  description = "ingress protocol type for wordpress ec2 security group"
}

variable "wp_sg_cidr_block" {
  type        = string
  description = "cidr block for wordpress ec2 instance security group"
}

variable "wp_ingress_ssh_port" {
  type        = number
  description = "ingress ssh port for wordpress ec2 security group"
}

variable "wp_egress_protocol_type" {
  type        = string
  description = "this is egress protoocol type"
}

variable "wp_egress_port" {
  type        = number
  description = "this is egress port"
}

variable "wp_ingress_mysql_port" {
  type        = number
  description = "ingress mysql port for wordpress ec2 security group"
}

variable "wordpress_ec2_name" {
  type        = string
  description = "wordpress ec2 name"
}

variable "mysql_ec2_name" {
  type        = string
  description = "mysql ec2 name"
}

variable "mysql_sg_name" {
  type        = string
  description = "mysql ec2 security group name"
}