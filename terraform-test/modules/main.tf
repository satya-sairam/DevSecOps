module "network" {
    source = "./networking"
  
}

module "subnets" {
    source = "./subnets"
}




output "vpc_id" {
    value = aws_vpc.my_vpc.id
  
}


output "pvt_subnet_id" {
    value = aws_subnet.pvt_subnet.id
  
}

output "pub_subnet_id" {
    value = aws_subnet.pub_subnet.id
  
}


# terraform {

#   backend "s3" {}

# }