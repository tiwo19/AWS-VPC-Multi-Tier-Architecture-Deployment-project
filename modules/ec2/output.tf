output "ec2_1" {
  value       = aws_instance.web_server.id
  description = "AWS INSTANCE FOR WEB SERVER "

}
