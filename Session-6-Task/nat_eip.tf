resource "aws_eip" "webserver_nat_eip" {
  vpc = true
  # "This is eip which will be attached to nat gateway"

  tags = {
    Name    = "${var.env}-webserver-nat-eip"
    Env     = var.env
    Project = var.project_name
  }
}