resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "public_subnet" {
   vpc_id = aws_vpc.main.id
   cidr_block = var.public_subnet_cidr

  
}


resource "aws_subnet" "private_subnet" {
   vpc_id = aws_vpc.main.id
   cidr_block = var.private_subnet_cidr

  
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
  
}


output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
  
}