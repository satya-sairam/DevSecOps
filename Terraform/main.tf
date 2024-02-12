module "ec2" {
    source = "./ec2"
    sg_id_ec2 = "module.sg.sg_id_sg_module"
  
}

module "sg" {
    source = "./sg"
  
}

output "sg_id_root" {
    value = module.sg.sg_id_sg_module
  
}