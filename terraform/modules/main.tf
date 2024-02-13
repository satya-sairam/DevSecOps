module "newtworking" {
    source            = "./networking"
    cidr_block        = var.cidr_block  
    env               = var.env
    pub_subnet_cidr   = var.pub_subnet_cidr  
    pvt_subnet_cidr   = var.pvt_subnet_cidr
    region            = var.region

  
}


terraform {

  backend "s3" {}

}
