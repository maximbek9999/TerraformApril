resource "aws_key_pair" "terraform_server_key" {
  key_name   = var.key_pair_name
  public_key = file("~/.ssh/id_rsa.pub")
  # "This is key pair for our wordpress and mysql instance"

  tags = {
    Name    = var.key_pair_name
    Env     = var.env
    Project = var.project_name
  }
}
