variable "region" {
    description = "aws region"
    default = "us-east-1"
    type = "string"
  
}   

variable "vpc_cidr" {
    default = "10.0.0.0/16"
  
}

variable "public_subnet_cidr" {
  
  default = "10.0.1.0/24"
}

variable "instance_type" {
  default = "t2.micro"
  
}

variable "db_instance_class" {
  description = "The instance class for the RDS database"
  type        = string
  default     = "db.t3.micro"  # Default value for the database instance class
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydatabase"  # Default database name
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  default     = "admin"  # Default database username
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true  # Mark as sensitive to hide in logs
}