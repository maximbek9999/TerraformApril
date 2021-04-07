resource "aws_instance" "apacheec2" {
  availability_zone = "us-west-2b"
  ami               = "ami-0a4497cbe959da512"
  instance_type     = "t2.micro"
  user_data         = file("./install_apache.sh")
  tags = {
    "Name" = "Web-instance"
  }
}