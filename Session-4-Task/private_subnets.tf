resource "aws_subnet" "priv_sub_a" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.priv_sub_1_cidr_block
  # "This is private subnet a"
  tags = {
    Name    = var.priv_sub_name-1
    Env     = var.env
    Project = var.project_name
  }
}

resource "aws_subnet" "priv_sub_b" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.priv_sub_2_cidr_block
  # "This is private subnet b"
  tags = {
    Name    = var.priv_sub_name-2
    Env     = var.env
    Project = var.project_name
  }
}
resource "aws_subnet" "priv_sub_c" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.priv_sub_3_cidr_block
  # "This is private subnet a"
  tags = {
    Name    = var.priv_sub_name-3
    Env     = var.env
    Project = var.project_name
  }
}