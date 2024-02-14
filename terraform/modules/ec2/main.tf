resource "aws_instance" "my_ec2" {
  ami                           = "ami-0e731c8a588258d0d"
  instance_type                 = var.instance_type
  vpc_security_group_ids        = [var.sg_id]
  subnet_id                     = var.pub_subnet_id
  availability_zone             = data.aws_availability_zones.available[0]
  key_name                      = "ec2-ssh"
  associate_public_ip_address   = true


  tags = {
    Name = "${var.env}-instance"
  }
}