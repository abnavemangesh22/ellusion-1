

output "myip" {
  value = aws_instance.my-http-server.public_ip
}

