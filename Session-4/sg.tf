resource "aws_security_group" "ec2_sg" {
  name        = "allow tls"
  description = "allow ssh and http inbound traffic"

  ingress {
    description = "http"
    from_port   = var.ingress_http_port
    to_port     = var.ingress_http_port
    protocol    = var.ingress_protocol_type
    cidr_blocks = [var.sg_cidr_blocks]
  }

  ingress {
    description = "ssh"
    from_port   = var.ingress_ssh_port
    to_port     = var.ingress_ssh_port
    protocol    = var.ingress_protocol_type
    cidr_blocks = [var.sg_cidr_blocks]
  }

  egress {
    from_port   = var.egress_port
    to_port     = var.egress_port
    protocol    = var.egress_protocol_type
    cidr_blocks = [var.sg_cidr_blocks]
  }

  tags = {
    Name = "allow_incoming_ssh_http"
  }
}