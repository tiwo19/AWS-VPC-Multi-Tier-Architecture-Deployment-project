variable "subnet_id" {
  description = "Subnet ID for EC2 instances"
  type        = string
}

variable "sgec2_1" {
    description = "SG FOR EC2 INSTANCE "
  
}
variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
}

variable "security_group_id" {
  description = "The security group ID for the EC2 instances"
  type        = string
}

variable "desired_capacity" {
  description = "The desired capacity of the Auto Scaling group"
  type        = number
}

variable "max_size" {
  description = "The maximum size of the Auto Scaling group"
  type        = number
}

variable "min_size" {
  description = "The minimum size of the Auto Scaling group"
  type        = number
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the Auto Scaling group"
  type        = list(string)
}

variable "web_tg_arn" {
  description = "The ARN of the ALB target group"
  type        = string
}