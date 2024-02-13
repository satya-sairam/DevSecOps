resource "aws_nat_gateway" "ngw" {
  subnet_id             = aws_subnet.pub_subnet.id
  tags = {
    Name                = "${var.env}-ngw"
  }
  depends_on            = [aws_internet_gateway.igw]
}