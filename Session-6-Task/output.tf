output "mysql_ec2_private_ip" {
  value       = aws_instance.mysql_ec2.private_ip
  description = "This is output of private ip of database instance"
}

output "webserver_private_ips" {
    value = data.aws_instances.webserver_private_ips.private_ips
}

output "webserver_public_ips" {
  value = data.aws_instances.webserver_public_ips.public_ips
}