resource "aws_nat_gateway" "webserver_nat_gw" {
  depends_on    = [aws_internet_gateway.webserver_internet_gw]
  allocation_id = aws_eip.webserver_nat_eip.id
  subnet_id     = aws_subnet.pub_sub_a.id
  # "This is nat gateway which will provide internet access to private subnets"

  tags = {
    Name    = "${var.env}-webserver_nat_gw"
    Env     = var.env
    Project = var.project_name
  }
}