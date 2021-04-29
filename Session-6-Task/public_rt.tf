resource "aws_route_table" "webserver_public_rt" {
  vpc_id = aws_vpc.webserver_vpc.id
  # "This is public route table in created vpc associated with public subnets and internet gateway"
  tags = {
    Name    = "${var.env}-webserver-public-rt"
    Env     = var.env
    Project = var.project_name

  }

  route {
    cidr_block = var.public_rt_cidr_block
    gateway_id = aws_internet_gateway.webserver_internet_gw.id
  }
}

resource "aws_route_table_association" "pub_sub_a" {
  subnet_id      = aws_subnet.pub_sub_a.id
  route_table_id = aws_route_table.webserver_public_rt.id
}

resource "aws_route_table_association" "pub_sub_b" {
  subnet_id      = aws_subnet.pub_sub_b.id
  route_table_id = aws_route_table.webserver_public_rt.id
}

resource "aws_route_table_association" "pub_sub_c" {
  subnet_id      = aws_subnet.pub_sub_c.id
  route_table_id = aws_route_table.webserver_public_rt.id
}