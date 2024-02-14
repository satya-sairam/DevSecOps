module "newtworking" {
    source            = "./networking"
    cidr_block        = var.cidr_block  
    env               = var.env
    pub_subnet_cidr   = var.pub_subnet_cidr  
    pvt_subnet_cidr   = var.pvt_subnet_cidr
    region            = var.region

  
}


module "ec2" {
    source            = "./ec2"
    instance_type     = var.instance_type
    env               = var.env
    vpc_id            = module.newtworking.vpc_id
    sg_id             = module.sg.sg_id
    pub_subnet_id     = module.newtworking.pub_subnet_id
    depends_on        = [ module.newtworking, module.sg ]


  
}

module "sg" {
  source              = "./sg"
  vpc_id              = module.newtworking.vpc_id
}


terraform {

  backend "s3" {}

}
