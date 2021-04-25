resource "aws_autoscaling_group" "asg" {
  name                      = var.asg_name
  max_size                  = 2
  min_size                  = 1
  desired_capacity          = 1
  launch_configuration      = aws_launch_configuration.webserver_lc.name
  vpc_zone_identifier       = [for s in data.aws_subnet.subnet_values: s.id]
}