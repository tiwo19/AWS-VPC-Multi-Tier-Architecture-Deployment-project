output "sg_alb_1" {
    value = aws_security_group.alb_sg.id
    description = "SEC GROUP FOR ALB"
}

output "sg_ec2_1" {
    value = aws_security_group.ec2_sg.id
    description = "SEC GROUP FOR EC2"
  
}
output "sg_db_1" {
    value = aws_security_group.db_sg.id
    description = "SEC GROUP FOR DB"
  
}