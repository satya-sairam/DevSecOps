resource "aws_security_group" "example" {
  name        = "example"
  description = "Allow inbound traffic on port 80 and 443"

  // Ingress rules - allow incoming traffic
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // Allow traffic from any IPv4 address
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // Allow traffic from any IPv4 address
  }

  // Egress rules - allow outgoing traffic (optional)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" // Allow all protocols
    cidr_blocks = ["0.0.0.0/0"] // Allow traffic to any IPv4 address
  }

  // Tags (optional)
  tags = {
    Name = "example-sg"
    Environment = "production"
  }
}


output "sg_id_sg_module" {
  value = aws_security_group.example.id
}