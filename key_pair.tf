resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "my_key" {
  key_name   = "MyKey"
  public_key = tls_private_key.rsa.public_key_openssh
}
resource "local_file" "pr_key" {
  content = tls_private_key.rsa.private_key_pem
  filename = "PrKey"
}