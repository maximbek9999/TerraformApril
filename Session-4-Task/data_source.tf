data "aws_ami" "amazon_linux2" {
  most_recent = true
  owners      = ["amazon"]
  # "Fetching ami id for ec2 instance from aws (amazon) using filters"

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "template_file" "mysql_userdata" {
  template = file("./mysql_userdata.sh")
  vars = {
    wp_ec2_private_ip = "${aws_instance.wordpress_web.private_ip}"
    description       = "Creating variable named wp_ec2_private_ip which will pull private ip from wordpress ec2 and use it in mysql_userdata.sh file"
  }
}

