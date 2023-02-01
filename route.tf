resource "aws_route_table" "DevOps-Route" {
  vpc_id = aws_vpc.DevOps.id
  tags = {
    Name = var.route
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.DevOps-IGW.id
  }
  depends_on = [aws_subnet.DevOps-Subnet-2]
}

resource "aws_route_table_association" "DevM-1" {
  subnet_id      = aws_subnet.DevOps-Subnet-1.id
  route_table_id = aws_route_table.DevOps-Route.id
  depends_on     = [aws_route_table.DevOps-Route]
}
resource "aws_route_table_association" "DevM-2" {
  subnet_id      = aws_subnet.DevOps-Subnet-2.id
  route_table_id = aws_route_table.DevOps-Route.id
  depends_on     = [aws_route_table_association.DevM-1]
}