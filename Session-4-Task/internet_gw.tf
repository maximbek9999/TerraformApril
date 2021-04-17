resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.terraform_vpc.id
  # "This is internet gateway in created vpc"
  tags = {
    Name    = var.internet_gw_name
    Env     = var.env
    Project = var.project_name
  }
}
