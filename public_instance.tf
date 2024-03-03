resource "aws_instance" "my_ec2-Public" {
  ami = "ami-0440d3b780d96b29d"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.my_sg.id]
  subnet_id = aws_subnet.public_subnet.id
  key_name = aws_key_pair.my_key.id
  tags = {
    Name = "MyEC2Instance-Public"
  }
}