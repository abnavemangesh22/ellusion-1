
resource "aws_instance" "my-demo-1" {
  ami           = var.ec2_ami_id
  instance_type = var.machine_type["large-apps"]
  count = var.m_count
  #provider = aws.singapore
  #subnet_id         = aws_subnet.my-vpc-subnet.id
  #availability_zone = "ap-south-1a"
  tags = {
    "env" = "test"
    "OS"  = "amazon"
  }
}
