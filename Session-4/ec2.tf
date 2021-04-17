resource "aws_instance" "ec2_with_sg" {
  ami                    = data.aws_ami.amazon_linux2.image_id # data source reference
  instance_type          = var.instance_type                   #variable reference
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]      #resource reference
  key_name               = aws_key_pair.terraform_key.key_name #resource reference
  user_data              = data.template_file.user_data.rendered #function 

  tags = {
    Name = var.env
  }
}
