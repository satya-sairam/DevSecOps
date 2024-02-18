resource "aws_subnet" "pub_subnet" {
  vpc_id                = data.terraform_remote_state.new.outputs.vpc_id
  cidr_block            = var.pub_subnet_cidr
  availability_zone     = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "${var.env}-public-subnet"
  }
}


resource "aws_subnet" "pvt_subnet" {
  vpc_id                   = data.terraform_remote_state.new.outputs.vpc_id
  cidr_block               = var.pvt_subnet_cidr
  availability_zone        = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "${var.env}-private-subnet"
  }
}

