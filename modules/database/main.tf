resource "aws_db_instance" "default" {
  
allocated_storage = 10
instance_class = var.db_instance_class
username= var.db_username
password = var.db_password
db_name = var.db_name



}