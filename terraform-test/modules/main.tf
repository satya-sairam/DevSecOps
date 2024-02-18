module "vpc" {
    source = "./vpc"
    region = var.region
    env = var.env
    cidr_block = var.cidr_block

  
}

module "subnet" {
    source = "./subnets"
    region = var.region
    env = var.env
    pub_subnet_cidr = var.pub_subnet_cidr
    pvt_subnet_cidr = var.pvt_subnet_cidr

    
  
}

output "vpc_id" {
    value = module.vpc.vpc_id
  
}


terraform {

  backend "s3" {}

}
