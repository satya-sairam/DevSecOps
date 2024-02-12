resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-0dda9b38eacc6ef2d"

  tags = {
    Name = "allow_tls"
  }
}


output "sg_id_sg_module" {
  value = aws_security_group.allow_tls.id
}