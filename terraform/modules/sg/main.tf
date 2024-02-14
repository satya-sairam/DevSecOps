resource "aws_security_group" "allow_all_sg" {
  name                      = "allow_all_sg"
  description               = "Allow all inbound traffic and all outbound traffic"
  vpc_id                    = var.vpc_id

  tags = {
    Name = "allow_all_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_all" {
  security_group_id = aws_security_group.allow_all_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 0
  ip_protocol       = "-1"
  to_port           = 0
}
