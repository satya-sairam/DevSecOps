resource "aws_nat_gateway" "ngw" {
    allocation_id       = aws_eip.my_eip.id

  subnet_id             = aws_subnet.pub_subnet.id
  tags = {
    Name                = "${var.env}-ngw"
  }
  depends_on            = [aws_internet_gateway.igw, aws_subnet.pub_subnet]
}


resource "aws_eip" "my_eip" {
    depends_on = [ aws_internet_gateway.igw ]
  
}
