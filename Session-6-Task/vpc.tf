resource "aws_vpc" "webserver_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name    = "${var.env}-webserver-vpc"
    Env     = var.env
    Project = var.project_name
  }
}