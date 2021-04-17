resource "aws_subnet" "pub_sub_a" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.pub_sub_1_cidr_block
  # "These are public subnets which will be associated with public route table and internet gateway"
  tags = {
    Name    = var.pub_sub_name-1
    Env     = var.env
    Project = var.project_name
  }
}

resource "aws_subnet" "pub_sub_b" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.pub_sub_2_cidr_block

  tags = {
    Name    = var.pub_sub_name-2
    Env     = var.env
    Project = var.project_name
  }
}

resource "aws_subnet" "pub_sub_c" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.pub_sub_3_cidr_block

  tags = {
    Name    = var.pub_sub_name-3
    Env     = var.env
    Project = var.project_name
  }
}

