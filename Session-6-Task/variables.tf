variable "env" {
  type        = string
  description = "Name of the environment"
}

variable "project_name" {
  type        = string
  description = "project name"
}

variable "instance_type" {
  type        = string
  description = "instanve type"
}

variable "vpc_cidr_block" {
  type        = string
  description = "vpc cidrs block"
}

variable "public_rt_cidr_block" {
  type        = string
  description = "[ublic route table cidr block]"
}

variable "pub_sub_a_cidr_block" {
  type        = string
  description = "cidr block for fisrt public subnet"
}

variable "pub_sub_b_cidr_block" {
  type        = string
  description = "cidr block for second public subnet"
}

variable "pub_sub_c_cidr_block" {
  type        = string
  description = "cidr block for third public subnet"
}

variable "private_rt_cidr_block" {
  type        = string
  description = "private route table cidr block]"
}

variable "priv_sub_a_cidr_block" {
  type        = string
  description = "cidr block for private subnet a"
}

variable "priv_sub_b_cidr_block" {
  type        = string
  description = "cidr block for private subnet b"
}

variable "priv_sub_c_cidr_block" {
  type        = string
  description = "cidr block for private subnet c"
}

variable "webserver_ingress_protocol_type" {
  type        = string
  description = "ingress protocol type for webserver security group"
}
variable "webserver_sg_cidr_block" {
  type        = string
  description = "webserver cidr block"
}

variable "webserver_sg_tcp_ports" {
  type        = list(string)
  description = "webserver sg ingress ports"
}

variable "alb_ingress_protocol_type" {
  type        = string
  description = "ingress protocol type for alb security group"
}

variable "alb_sg_cidr_block" {
  type        = string
  description = "cidr block foralb security group"
}

variable "alb_sg_tcp_port" {
  type        = string
  description = "alb security group ingress port"
}

variable "ingress_mysql_port" {
  type        = number
  description = "ingress mysql port forwebserver ec2 security group"
}

variable "mysql_sg_cidr_block" {
  type        = string
  description = "cidr block for mysql sg"
}

variable "mysql_ingress_protocol_type" {
  type        = string
  description = "mysql sg ingress protocol type"
}

