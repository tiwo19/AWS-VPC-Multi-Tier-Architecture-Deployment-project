output "alb_1" {
    value = aws_lb.web_alb.id
    description = "ALB FOR WEB_SERVER"
  
}

output "web_tg_arn" {
  value = aws_lb_target_group.web_tg.arn
}