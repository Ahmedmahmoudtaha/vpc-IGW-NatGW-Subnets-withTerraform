resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id
}



resource "aws_route" "public_route" {
  route_table_id            = aws_route_table.public_route_table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.internet_gw.id
}

resource "aws_route_table_association" "assoc_public1" {
  subnet_id      = aws_subnet.public1_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "assoc_public2" {
  subnet_id      = aws_subnet.public2_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}


##############################################################################


resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.main.id
}



resource "aws_route" "private_route" {
  route_table_id            = aws_route_table.private_route_table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.nat_gw.id
}

resource "aws_route_table_association" "assoc_private1" {
  subnet_id      = aws_subnet.private1_subnet.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "assoc_private2" {
  subnet_id      = aws_subnet.private2_subnet.id
  route_table_id = aws_route_table.private_route_table.id
}

