data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}

data "aws_subnet" "subnet_values" {
  for_each = data.aws_subnet_ids.default.ids
  id       = each.value
}
output "subnets_ids" {
  value = [for s in data.aws_subnet.subnet_values: s.id]
}

data "aws_ami" "amazon_linux2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "template_file" "webserver" {
  template = file("userdata.sh")
  vars = {
    env = var.env
  }
}