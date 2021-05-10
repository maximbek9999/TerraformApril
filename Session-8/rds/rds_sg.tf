resource "aws_security_group" "rds_sg" {
  description = "This is security group for rds instance"
  tags = {
    Name = "${var.env}-rds-sg"
  }
}

resource "aws_security_group_rule" "rds_ingress" {
  type              = "ingress"
  description       = "rds"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.rds_sg.id

}

resource "aws_security_group_rule" "rds_egress" {
  type              = "egress"
  description       = "rds_egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.rds_sg.id
}