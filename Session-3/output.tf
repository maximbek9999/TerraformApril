output "my_ec2_public_ip" {
  value = aws_instance.ec2_with_sg.public_ip
}
output "my_ec2_ami" {
  value = aws_instance.ec2_with_sg.ami

}