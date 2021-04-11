resource "aws_instance" "ec2_with_sg" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name               = aws_key_pair.terraform_key.key_name
  user_data              = file("user_data.sh")

  tags = {
    Name = var.env
  }
}
