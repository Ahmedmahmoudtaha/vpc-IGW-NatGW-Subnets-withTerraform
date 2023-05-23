resource "aws_subnet" "private1_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private1_cider
}

resource "aws_subnet" "private2_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private2_cider
}

resource "aws_subnet" "public1_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public1_cider
  map_public_ip_on_launch=true
}

resource "aws_subnet" "public2_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public2_cider
  map_public_ip_on_launch=true
}