resource "aws_vpc" "my_vpc" {
  cidr_block               = var.cidr_block
  instance_tenancy         = "default"
  enable_dns_hostnames     = true
  enable_dns_support       = true
  tags = {
    Name = "${var.env}-vpc"
  }
}
