resource "aws_vpc" "my_vpc" {
  count = 2
  cidr_block = var.cidr_block[count.index]
}

resource "aws_subnet" "subnet" {
    count = length(var.subnet_cidrs)
    vpc_id = aws_vpc.my_vpc[01].id 
    cidr_block = var.subnet_cidrs[count.index]
  depends_on = [
    aws_vpc.my_vpc
  ]
}