resource "aws_security_group" "mysql_sg" {
  vpc_id      = aws_vpc.webserver_vpc.id
  description = "This is security group for mysql instance"

  tags = {
    Name    = "${var.env}-mysql-sg"
    Env     = var.env
    Project = var.project_name
  }

  ingress {
    description = "mysql"
    from_port   = var.ingress_mysql_port
    to_port     = var.ingress_mysql_port
    protocol    = var.mysql_ingress_protocol_type
    cidr_blocks = ["0.0.0.0/0"]

  }

  # ingress {
  #   description = "ssh"
  #   from_port   = var.wp_ingress_ssh_port
  #   to_port     = var.wp_ingress_ssh_port
  #   protocol    = var.wp_ingress_protocol_type
  #   cidr_blocks = [var.wp_sg_cidr_block]
  # }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.mysql_sg_cidr_block]
  }

}