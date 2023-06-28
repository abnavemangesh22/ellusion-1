
resource "aws_instance" "my-demo-1" {
  ami           = "ami-012b9156f755804f5"
  instance_type = "t2.micro"
  #count = 4
  #provider = aws.singapore
  #subnet_id         = aws_subnet.my-vpc-subnet.id
  availability_zone = "ap-south-1a"
  tags = {
    "env" = "test"
    "OS"  = "amazon"
  }
  lifecycle {
    ignore_changes = [ 
      tags,
     ]
  }
  
}
