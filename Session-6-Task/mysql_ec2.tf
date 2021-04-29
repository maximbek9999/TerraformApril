resource "aws_instance" "mysql_ec2" {
  ami                    = data.aws_ami.amazon_linux2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.mysql_sg.id]
  #key_name               = aws_key_pair.terraform_server_key.key_name
  subnet_id = aws_subnet.priv_sub_a.id
  user_data = data.template_file.mysql_userdata.rendered
  # "This is database instance"

  tags = {
    Name    = "${var.env}-mysql-ec2"
    Env     = var.env
    Project = var.project_name
  }
}