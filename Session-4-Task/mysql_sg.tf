resource "aws_security_group" "mysql_sg" {
  vpc_id      = aws_vpc.terraform_vpc.id
  description = "This is security group for mysql instance"

  tags = {
    Name    = var.mysql_sg_name
    Env     = var.env
    Project = var.project_name
  }

  ingress {
    description = "mysql"
    from_port   = var.wp_ingress_mysql_port
    to_port     = var.wp_ingress_mysql_port
    protocol    = var.wp_ingress_protocol_type
    cidr_blocks = [var.wp_sg_cidr_block]

  }

  # ingress {
  #   description = "ssh"
  #   from_port   = var.wp_ingress_ssh_port
  #   to_port     = var.wp_ingress_ssh_port
  #   protocol    = var.wp_ingress_protocol_type
  #   cidr_blocks = [var.wp_sg_cidr_block]
  # }

  egress {
    from_port   = var.wp_egress_port
    to_port     = var.wp_egress_port
    protocol    = var.wp_egress_protocol_type
    cidr_blocks = [var.wp_sg_cidr_block]
  }

}