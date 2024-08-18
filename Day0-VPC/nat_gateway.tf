resource "aws_eip" "eip_1a" {
  domain = "vpc"

  tags = {
    Name = format("eip-%sa", var.region)
  }
}

resource "aws_eip" "eip_1b" {
  domain = "vpc"

  tags = {
    Name = format("eip-%sb", var.region)
  }
}

resource "aws_eip" "eip_1c" {
  domain = "vpc"

  tags = {
    Name = format("eip-%sc", var.region)
  }
}


resource "aws_nat_gateway" "nat_gateway_1a" {
    
  allocation_id = aws_eip.eip_1a.id
  subnet_id     = aws_subnet.subnet_public_1a.id
  
  tags = {
    Name = format("nat-%sa", var.region)
  }
}

resource "aws_nat_gateway" "nat_gateway_1b" {
    
  allocation_id = aws_eip.eip_1b.id
  subnet_id     = aws_subnet.subnet_public_1b.id
  
  tags = {
    Name = format("nat-%sb", var.region)
  }
}

resource "aws_nat_gateway" "nat_gateway_1c" {
    
  allocation_id = aws_eip.eip_1c.id
  subnet_id     = aws_subnet.subnet_public_1c.id
  tags = {
    Name = format("nat-%sc", var.region)
  }
}