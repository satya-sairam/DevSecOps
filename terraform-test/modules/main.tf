module "network" {
    source = "./networking"
  
}

module "subnets" {
    source = "./subnets"
}




output "vpc_id" {
    value = module.networking.vpc_id
  
}


output "pvt_subnet_id" {
    value = module.subnets.pvt_subnet_id
  
}

output "pub_subnet_id" {
    value = module.subnets.pub_subnet_id
  
}


# terraform {

#   backend "s3" {}

# }