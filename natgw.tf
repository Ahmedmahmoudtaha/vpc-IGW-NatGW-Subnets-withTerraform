resource "aws_eip" "nat_gw_ip" {
}



resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_gw_ip.id
  subnet_id     = aws_subnet.public1_subnet.id
}