resource "aws_instance" "ec2demo-new" {
  ami           = "ami-012b9156f755804f5"
  instance_type = "t2.micro"
  tags = {
    env   = "test"
    myapp = "sample"
    demotag = "ellusion"
  }
}
