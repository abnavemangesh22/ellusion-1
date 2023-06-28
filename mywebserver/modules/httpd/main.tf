resource "aws_instance" "my-http-server" {
  ami           = data.aws_ami.myamis.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.my-instance-key.id
  vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
  subnet_id = aws_subnet.my-vpc-subnet.id   
  tags = {
    "env" = "test"
    "OS"  = "amazon"
  }
  user_data = file("apache-install.sh")
}