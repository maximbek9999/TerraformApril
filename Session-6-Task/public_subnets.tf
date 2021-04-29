resource "aws_subnet" "pub_sub_a" {
  vpc_id     = aws_vpc.webserver_vpc.id
  cidr_block = var.pub_sub_a_cidr_block
  availability_zone = "us-east-1a"
  # "These are public subnets which will be associated with public route table and internet gateway"

  tags = {
    Name    = "${var.env}-pub-sub-a"
    Env     = var.env
    Project = var.project_name
  }
}

resource "aws_subnet" "pub_sub_b" {
  vpc_id     = aws_vpc.webserver_vpc.id
  cidr_block = var.pub_sub_b_cidr_block
  availability_zone = "us-east-1b"

  tags = {
    Name    = "${var.env}-pub-sub-b"
    Env     = var.env
    Project = var.project_name
  }
}

resource "aws_subnet" "pub_sub_c" {
  vpc_id     = aws_vpc.webserver_vpc.id
  cidr_block = var.pub_sub_c_cidr_block
  availability_zone = "us-east-1c"

  tags = {
    Name    = "${var.env}-pub-sub-c"
    Env     = var.env
    Project = var.project_name
  }
}