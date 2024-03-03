resource "aws_security_group" "my_sg" {
  name        = "MySg"
  description = "security group for Instances"
  vpc_id      = aws_vpc.my_vpc.id

  tags = {
    Name = "MySg"
  }
  ingress {
    description = "SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}