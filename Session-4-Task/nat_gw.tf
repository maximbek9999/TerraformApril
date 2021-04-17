resource "aws_nat_gateway" "nat_gw" {
  depends_on    = [aws_internet_gateway.internet_gw]
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.pub_sub_a.id
  # "This is nat gateway which will provide internet access to private subnets"

  tags = {
    Name    = var.nat_gw_name
    Env     = var.env
    Project = var.project_name
  }
}