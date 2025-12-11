# resource "aws_subnet" "subnets" {
    
#     vpc_id = aws_vpc.cust_vpc.id
#     for_each = var.sub_cidr
#     cidr_block = each.value
#     tags = {
#         Name = each.key
#     }
    
# }


resource "aws_subnet" "subnets" {
    vpc_id = aws_vpc.cust_vpc.id
    for_each = var.cust-subnets
    cidr_block = each.value.sub_cidr
    availability_zone = each.value.az
    tags = {
      Name = each.value.Name
    }
}