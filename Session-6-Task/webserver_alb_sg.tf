resource "aws_security_group" "alb_sg" {
  name        = "${var.env}-alb-sg"
  description = "Allow HTTP traffic"
  vpc_id      = aws_vpc.webserver_vpc.id
}
resource "aws_security_group_rule" "alb_http_ingress" {
  type              = "ingress"
  from_port         = var.alb_sg_tcp_port
  to_port           = var.alb_sg_tcp_port
  protocol          = var.alb_ingress_protocol_type
  cidr_blocks       = [var.alb_sg_cidr_block]
  security_group_id = aws_security_group.alb_sg.id
}
resource "aws_security_group_rule" "alb_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = [var.alb_sg_cidr_block]
  security_group_id = aws_security_group.alb_sg.id
}