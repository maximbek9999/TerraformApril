resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.terraform_vpc.id
  # "This is private rout table with associated subnets and edited route to nat gateway"

  route {
    cidr_block = var.private_rt_cidr_block
    gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
    Name    = var.private_rt_name
    Env     = var.env
    Project = var.project_name
  }
}

resource "aws_route_table_association" "priv_sub_a" {
  subnet_id      = aws_subnet.priv_sub_a.id
  route_table_id = aws_route_table.private_rt.id
  # "This is private subnet a for private network"

}

resource "aws_route_table_association" "priv_sub_b" {
  subnet_id      = aws_subnet.priv_sub_b.id
  route_table_id = aws_route_table.private_rt.id
  # "This is private subnet b for private network"
}

resource "aws_route_table_association" "priv_sub_c" {
  subnet_id      = aws_subnet.priv_sub_c.id
  route_table_id = aws_route_table.private_rt.id
  # "This is private subnet c for private network"

}