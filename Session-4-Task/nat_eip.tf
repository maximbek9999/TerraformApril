resource "aws_eip" "nat_eip" {
  vpc = true
  # "This is eip which will be attached to nat gateway"

  tags = {
    Name    = var.nat_eip_name
    Env     = var.env
    Project = var.project_name
  }
}