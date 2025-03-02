output "vpc_1" {
    value = aws_vpc.main_vpc.id
    description = "OUT PUT FOR MAIN VPC"
  
}
output "subnet_1" {
    value = aws_subnet.public_subnet.id
    description = "PUBLIC SUBNET "
  
}

output "subnet_private_1" {
    value = aws_subnet.private_subnet.id
    description = "PRIVATE SUBNET "
  
  
}
