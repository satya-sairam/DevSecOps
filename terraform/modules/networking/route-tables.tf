resource "aws_route_table" "pub_rt" {
  vpc_id               = aws_vpc.my_vpc.id

  route {
    cidr_block         = "0.0.0.0/0"
    gateway_id         = aws_internet_gateway.igw.id
  }

  tags = {
    Name               = "${var.env}-pub-rt"
  }
}



resource "aws_route_table_association" "pub_rt" {
  subnet_id      = aws_subnet.pub_subnet.id
  route_table_id = aws_route_table.pub_rt.id
}




resource "aws_route_table" "pvt_rt" {
  vpc_id               = aws_vpc.my_vpc.id

  route {
    cidr_block         = "0.0.0.0/0"
    gateway_id         = aws_nat_gateway.ngw.id
  }

  tags = {
    Name               = "${var.env}-pvt-igw"
  }
}



resource "aws_route_table_association" "pvt_rt" {
  subnet_id      = aws_subnet.pub_subnet.id
  route_table_id = aws_route_table.pvt_rt.id
}