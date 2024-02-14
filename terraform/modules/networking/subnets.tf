resource "aws_subnet" "pub_subnet" {
  vpc_id                = aws_vpc.my_vpc.id
  cidr_block            = var.pub_subnet_cidr
  availability_zone     = data.aws_availability_zones.available.names[0]
  depends_on            = [ aws_vpc.my_vpc ]
  

  tags = {
    Name = "${var.env}-public-subnet"
  }
}


resource "aws_subnet" "pvt_subnet" {
  vpc_id                   = aws_vpc.my_vpc.id
  cidr_block               = var.pvt_subnet_cidr
  availability_zone        = data.aws_availability_zones.available.names[1]
  depends_on              = [ aws_vpc.my_vpc ]

  tags = {
    Name = "${var.env}-private-subnet"
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}
