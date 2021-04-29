resource "aws_subnet" "priv_sub_a" {
  vpc_id     = aws_vpc.webserver_vpc.id
  cidr_block = var.priv_sub_a_cidr_block
  # "This is private subnet a"
  tags = {
    Name    = "${var.env}-priv-sub-a"
    Env     = var.env
    Project = var.project_name
  }
}

resource "aws_subnet" "priv_sub_b" {
  vpc_id     = aws_vpc.webserver_vpc.id
  cidr_block = var.priv_sub_b_cidr_block
  # "This is private subnet b"
  tags = {
    Name    = "${var.env}-priv-sub-b"
    Env     = var.env
    Project = var.project_name
  }
}
resource "aws_subnet" "priv_sub_c" {
  vpc_id     = aws_vpc.webserver_vpc.id
  cidr_block = var.priv_sub_c_cidr_block
  # "This is private subnet c"
  tags = {
    Name    = "${var.env}-priv-sub-c"
    Env     = var.env
    Project = var.project_name
  }
}