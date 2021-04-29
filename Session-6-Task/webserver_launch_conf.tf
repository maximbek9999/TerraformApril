resource "aws_launch_configuration" "webserver_launch_conf" {
  name                        = "${var.env}-webserver-launch_conf"
  image_id                    = data.aws_ami.amazon_linux2.id
  instance_type               = var.instance_type
  user_data                   = file("./webserver_userdata.sh")
  security_groups             = [aws_security_group.webserver_sg.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.webserver_key.key_name

}