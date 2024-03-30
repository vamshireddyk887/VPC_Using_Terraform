resource "aws_subnet" "main_subnet" {
  count                  = 4
  vpc_id                 = var.vpc_id
  cidr_block             = element(var.subnet_cidr, count.index)
  availability_zone      = element(var.availability_zone, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = element(var.subnet_name, count.index)
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.destination_cidr
    gateway_id = var.igw_id
  }

  tags = {
    Name = "public_route_table"
  }
}

resource "aws_route_table" "private_route_table" {
  count = 2
  vpc_id = var.vpc_id

  tags = {
    Name = "private_route_table_${count.index + 1}"
  }
}

resource "aws_route_table_association" "public_subnet_association" {
  count          = 2
  subnet_id      = aws_subnet.main_subnet[count.index].id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_subnet_association" {
  count          = 2
  subnet_id      = aws_subnet.main_subnet[count.index + 2].id
  route_table_id = aws_route_table.private_route_table[count.index % 2].id
}

resource "aws_eip" "nat_eip" {
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id 
  subnet_id     = aws_subnet.main_subnet[0].id 

  tags = {
    Name = var.nat_gateway_name
  }
}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_route_table[0].id  
  destination_cidr_block = var.destination_cidr
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
}
