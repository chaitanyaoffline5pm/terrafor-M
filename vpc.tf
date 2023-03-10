resource "aws_vpc" "DevOps" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
    Env  = var.env
  }
}

resource "aws_internet_gateway" "DevOps-IGW" {
  vpc_id = aws_vpc.DevOps.id
  tags = {
    Name = var.IGW_name
  }
  depends_on = [
    aws_vpc.DevOps
  ]
}
resource "aws_vpc" "DevOps-1" {
 cidr_block           = var.vpc_cidr_1
  enable_dns_hostnames = true
  tags = {
   Name = var.vpc_name_1
  Env  = var.env
  }
}
