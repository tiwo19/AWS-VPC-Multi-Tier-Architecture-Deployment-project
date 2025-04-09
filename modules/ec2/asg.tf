 resource "aws_launch_template" "app" {
  name          = "app-launch-template"
  image_id      = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ var.security_group_id ]

tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "app-instance"
    }
  }
}

resource "aws_autoscaling_group" "app" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = var.subnet_ids
  launch_template {
    id      = aws_launch_template.app.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "app-instance"
    propagate_at_launch = true
  }
} 

resource "aws_autoscaling_attachment" "asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.app.name
  lb_target_group_arn   = var.web_tg_arn
}