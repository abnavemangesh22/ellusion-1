resource "tls_private_key" "my-key-mangesh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "my-instance-key" {
  key_name   = "my-instance-web-key"
  public_key = tls_private_key.my-key-mangesh.public_key_openssh
}

/*
output "mykeyinfo" {
  value     = tls_private_key.my-key-mangesh.private_key_pem
  sensitive = true
}

output "myip" {
  value = aws_instance.my-demo-1.*.public_ip
}
*/