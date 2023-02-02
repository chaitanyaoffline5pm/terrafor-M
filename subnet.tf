resource "aws_subnet" "DevOps-Subnet-1" {
  cidr_block              = var.subnet_cidr_1
  vpc_id                  = aws_vpc.DevOps.id
  map_public_ip_on_launch = true
  availability_zone       = var.az1
  tags = {
    Name = var.subnet_name_1
  }
  depends_on = [aws_internet_gateway.DevOps-IGW]
}
resource "aws_subnet" "DevOps-Subnet-2" {
  cidr_block              = var.subnet_cidr_2
  vpc_id                  = aws_vpc.DevOps.id
  map_public_ip_on_launch = true
  availability_zone       = var.az2
  tags = {
    Name = var.subnet_name_2
  }
  depends_on = [aws_subnet.DevOps-Subnet-1]
}
resource "aws_subnet" "DevOps-Subnet-3" {
  cidr_block              = var.subnet_cidr_3
  vpc_id                  = aws_vpc.DevOps.id
  map_public_ip_on_launch = true
  availability_zone       = var.az2
  tags = {
    Name = var.subnet_name_3
  }
  depends_on = [aws_subnet.DevOps-Subnet-2]
}

