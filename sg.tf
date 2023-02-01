resource "aws_security_group" "DevOPs-Sg" {
  name        = "DevM-Sg"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.DevOps.id

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "DevM-Sg"
  }
}