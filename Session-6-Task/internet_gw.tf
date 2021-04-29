resource "aws_internet_gateway" "webserver_internet_gw" {
  vpc_id = aws_vpc.webserver_vpc.id
  # "This is internet gateway in created vpc"
  tags = {
    Name    = "${var.env}-internet-gw"
    Env     = var.env
    Project = var.project_name
  }
}
