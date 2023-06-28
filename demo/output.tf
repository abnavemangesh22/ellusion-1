

output "myip-public" {
  value = aws_instance.my-demo-1.*.public_ip
}

output "my-instace-info" {
  value = aws_instance.my-demo-1.*.instance_state

}
