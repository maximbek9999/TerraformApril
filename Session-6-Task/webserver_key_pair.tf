resource "aws_key_pair" "webserver_key" {
  key_name   = "${var.env}-webserver-key-pair"
  public_key = file("~/.ssh/id_rsa.pub")
  # "This is key pair for our webserver instances"

  tags = {
    Name    = "${var.env}-webserver-key-pair"
    Env     = var.env
    Project = var.project_name
  }
}
