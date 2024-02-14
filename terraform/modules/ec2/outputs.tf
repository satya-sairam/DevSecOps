output "ec2_attributes" {
  value = aws_instance.my_ec2
}


output "ec2_public_ip" {
  value = aws_instance.my_ec2.public_ip
}