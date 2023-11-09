resource "aws_cloudwatch_metric_alarm" "cpu_scale_up" {
  alarm_name          = "CPUHighScaleUpAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = 1
  metric_name        = "CPUUtilization" 
  namespace          = "AWS/ECS"
  period             = 60
  statistic          = "Average"
  threshold          = 50 
  alarm_description   = "Scale up when CPU is above 50%"

  alarm_actions = [aws_appautoscaling_policy.scale_up.arn]
}

resource "aws_cloudwatch_metric_alarm" "cpu_scale_down" {
  alarm_name          = "CPULowScaleDownAlarm"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods = 1
  metric_name        = "CPUUtilization"  
  namespace          = "AWS/ECS"
  period             = 60
  statistic          = "Average"
  threshold          = 20 
  alarm_description   = "Scale down when CPU is below 20%"

  alarm_actions = [aws_appautoscaling_policy.scale_down.arn]
}