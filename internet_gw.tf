resource "aws_internet_gateway" "public_internet_gateway" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "IGW: For Public Subnet"
  }
}