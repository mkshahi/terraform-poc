resource "aws_instance" "ec2_instance" {
    ami = ""
    instance_type = var.instance_type
    subnet_id = var.subnet_id
  
}