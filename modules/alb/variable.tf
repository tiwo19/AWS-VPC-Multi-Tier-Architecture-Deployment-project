variable "subnet_ids" {
  description = "Subnet ID for EC2 instances"
}
variable "sgalb_1" {
  description = "SEC GROUP FOR ALB"
  type        = string

}
variable "vpc_id" {
  description = "VPC ID for EC2 instances"
  type        = string
}

