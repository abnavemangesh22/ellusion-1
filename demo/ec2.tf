
resource "aws_instance" "my-demo-1" {
  ami           = data.aws_ami.myamis.id
  instance_type = "t2.micro"
  count         = 1
  key_name = aws_key_pair.my-instance-key.id
  #provider = aws.singapore
  #subnet_id         = aws_subnet.my-vpc-subnet.id
  #availability_zone = "ap-south-1a"
  tags = {
    "env" = "test"
    "OS"  = "amazon"
  }
  user_data = file("apache-install.sh")
  /*
  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to Terraform</h1>" > /var/www/html/index.html
    EOF
 */
 
}
