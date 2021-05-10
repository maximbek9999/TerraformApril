resource "aws_instance" "web_server" {
  ami                    = data.aws_ami.amazon_linux2.image_id   # data source reference
  instance_type          = var.instance_type                     #variable reference
  vpc_security_group_ids = [aws_security_group.web_server_sg.id] #resource reference
  key_name               = aws_key_pair.terraform_key.key_name   #resource reference
  tags                   = local.common_tags

  provisioner "file" {
    source      = "index.html"
    destination = "/tmp/index.html"

    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip # only when you running under same resource, otherwise use aws_instance.web_server.public_ip
      private_key = file("~/.ssh/id_rsa")

    }
  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo cp /tmp/index.html /var/www/html/index.html",
      "sudo systemctl enable --now httpd"
    ]
    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip # only when you running under same resource, otherwise use aws_instance.web_server.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}

resource "aws_key_pair" "terraform_key" {
  key_name   = "Terraform-Server"
  public_key = file("~/.ssh/id_rsa.pub")
}

