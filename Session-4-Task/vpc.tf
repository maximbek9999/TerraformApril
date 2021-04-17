resource "aws_vpc" "terraform_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  # "This is vpc for wordpress deployment"

  tags = {
    Name    = var.vpc_name
    Env     = var.env
    Project = var.project_name
  }
}