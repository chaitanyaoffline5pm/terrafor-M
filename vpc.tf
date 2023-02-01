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