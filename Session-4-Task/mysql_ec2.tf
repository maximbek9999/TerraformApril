resource "aws_instance" "mysql_ec2" {
  ami                    = data.aws_ami.amazon_linux2.image_id
  instance_type          = var.wp_instance_type
  vpc_security_group_ids = [aws_security_group.mysql_sg.id]
  key_name               = aws_key_pair.terraform_server_key.key_name
  subnet_id              = aws_subnet.priv_sub_a.id
  user_data              = data.template_file.mysql_userdata.rendered
  # "This is database instance"

  tags = {
    Name    = var.mysql_ec2_name
    Env     = var.env
    Project = var.project_name
  }
}

output "mysql_ec2_private_ip" {
  value       = aws_instance.mysql_ec2.private_ip
  description = "This is output of private ip of database instance"
}