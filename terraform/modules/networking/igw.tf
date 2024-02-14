resource "aws_internet_gateway" "igw" {
  vpc_id              = aws_vpc.my_vpc.id
  depends_on          = [ aws_vpc.my_vpc ]

  tags = {
    Name              = "main"
  }
}