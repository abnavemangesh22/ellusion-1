module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = var.my-instance
  key_name               = aws_key_pair.my-instance-key.id
  monitoring             = false
  vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
  subnet_id              = aws_subnet.my-vpc-subnet.id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

output "myoutmodule" {
  value = module.ec2_instance.public_ip
}