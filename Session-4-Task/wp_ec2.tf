resource "aws_instance" "wordpress_web" {
  ami                         = data.aws_ami.amazon_linux2.image_id
  instance_type               = var.wp_instance_type
  vpc_security_group_ids      = [aws_security_group.wp_sg.id]
  key_name                    = aws_key_pair.terraform_server_key.key_name
  subnet_id                   = aws_subnet.pub_sub_a.id
  associate_public_ip_address = true
  user_data                   = file("./web_userdata.sh")
  # "This is ec2 instance for wordpress application"
  tags = {
    Name    = var.wordpress_ec2_name
    Env     = var.env
    Project = var.project_name
  }
}

output "wordpress_web_public_ip" {
  value = aws_instance.wordpress_web.public_ip
}
