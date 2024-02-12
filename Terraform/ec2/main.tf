resource "aws_instance" "web" {
  ami           = "ami-0e731c8a588258d0d"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_id_ec2]

    tags = {
    Name = "tf-example"
    
  }
  }




provider "aws" {
    region = "us-east-1"
}