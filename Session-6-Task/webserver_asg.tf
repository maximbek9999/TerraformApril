resource "aws_autoscaling_group" "webserver_asg" {
  name                 = "${var.env}-webserver-asg"
  max_size             = 5
  min_size             = 1
  desired_capacity     = 2
  health_check_type    = "ELB"
  launch_configuration = aws_launch_configuration.webserver_launch_conf.name
  vpc_zone_identifier  = [aws_subnet.pub_sub_a.id, aws_subnet.pub_sub_b.id, aws_subnet.pub_sub_c.id]
  target_group_arns    = [aws_lb_target_group.webserver_tg.arn]

  tag {
    key                 = "Name"
    value               = "${var.env}-webserver-instance"
    propagate_at_launch = true
  }
}