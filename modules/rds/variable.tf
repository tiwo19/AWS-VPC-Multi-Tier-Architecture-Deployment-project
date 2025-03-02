variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The username for the database"
  type        = string
}

variable "db_password" {
  description = "The password for the database"
  type        = string
}

variable "db_security_group_id" {
  description = "The security group ID for the database"
  type        = string
}

variable "db_subnet_group" {
  description = "The subnet group for the database"
  type        = string
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the database"
  type        = list(string)
}