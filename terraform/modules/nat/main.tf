

# Create NAT Gateway

resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = aws_eip.my_eip.id
  subnet_id     = var.public_subnet_id
}

resource "aws_eip" "my_eip" {
}


