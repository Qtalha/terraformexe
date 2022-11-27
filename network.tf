resource "aws_vpc" "vpc_1" {
  
  cidr_block = var.cidr_block_1
}
resource "aws_vpc" "vpc_2" {
  
  cidr_block = var.cidr_block_2
}

resource "aws_subnet" "subnet_1" {
    count = 2
    vpc_id = aws_vpc.vpc_1.id
    cidr_block = var.subnet_cidrs[count.index]
  tags = {
    "Name" = var.subnet_name_tags[count.index]
  }
}
resource "aws_subnet" "subnet_2" {
    count = 2
    vpc_id = aws_vpc.vpc_2.id
    cidr_block = var.subnet_cidrs[2+count.index]
  tags = {
    "Name" = var.subnet_name_tags[2+count.index]
  }
}