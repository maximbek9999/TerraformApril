resource "aws_autoscaling_group" "asg" {
  name                      = "${var.env}-webserver-asg"
  max_size                  = 5
  min_size                  = 1
  desired_capacity          = 1
  health_check_grace_period = 300
  health_check_type         = "ELB"
  force_delete              = true
  launch_configuration      = aws_launch_configuration.webserver_lc.name
  vpc_zone_identifier       = data.aws_subnet_ids.default.ids
}
