resource "aws_security_group" "webserver_sg" {
  vpc_id      = aws_vpc.webserver_vpc.id
  description = "This is security group for webserver instances"

  tags = {
    Name    = "${var.env}-webserver-sg"
    Env     = var.env
    Project = var.project_name
  }
}

resource "aws_security_group_rule" "webserver_sg_ingress_ports" {
  type              = "ingress"
  count             = length(var.webserver_sg_tcp_ports)
  from_port         = element(var.webserver_sg_tcp_ports, count.index)
  to_port           = element(var.webserver_sg_tcp_ports, count.index)
  protocol          = var.webserver_ingress_protocol_type
  cidr_blocks       = [var.webserver_sg_cidr_block]
  security_group_id = aws_security_group.webserver_sg.id
}
resource "aws_security_group_rule" "webserver_sg_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = [var.webserver_sg_cidr_block]
  security_group_id = aws_security_group.webserver_sg.id
}