resource "aws_instance" "myvm-test" {
  ami = "ami-012b9156f755804f5"
  key_name = "my-gui-keypair"
  instance_type = "t2.micro"
}
