resource "aws_vpc" "cust_vpc" {
    
    cidr_block = var.cust_vpc_cidr
    tags = {
      Name = "VPC-01"
    }
  
}