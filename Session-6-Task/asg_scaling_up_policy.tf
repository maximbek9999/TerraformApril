resource "aws_autoscaling_policy" "webserver_scaling_up" {
  name                   = "${var.env}-webserver-scale-up"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 60
  autoscaling_group_name = aws_autoscaling_group.webserver_asg.name
}

resource "aws_cloudwatch_metric_alarm" "webserver_cpu_up" {
  alarm_name          = "${var.env}-webserver-cpu-up"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "70"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.webserver_asg.name
  }

  alarm_description = "This metric monitors ec2 cpu utilization"
  alarm_actions     = [aws_autoscaling_policy.webserver_scaling_up.arn]
}