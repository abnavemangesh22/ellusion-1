
/*
resource "aws_vpc" "myvpc" {
  cidr_block = "192.168.100.0/24"
  #provider = aws.singapore
  tags = {
    "name" = "dev"
  }
}

resource "aws_subnet" "my-vpc-subnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "192.168.100.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  #provider = aws.singapore
}


resource "aws_internet_gateway" "myvpc-internet-igw" {
  vpc_id = aws_vpc.myvpc.id
  #provider = aws.singapore
}



resource "aws_route_table" "myvpc-route-table" {
  vpc_id = aws_vpc.myvpc.id
  #provider = aws.singapore

}


resource "aws_route" "my-route" {
  route_table_id         = aws_route_table.myvpc-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.myvpc-internet-igw.id
  #provider = aws.singapore
}



resource "aws_route_table_association" "myvpc-route-table-associatation" {
  route_table_id = aws_route_table.myvpc-route-table.id
  subnet_id      = aws_subnet.my-vpc-subnet.id
  #provider = aws.singapore
}



resource "aws_eip" "my-eip" {
  instance = aws_instance.my-demo-1.id
  domain = "vpc"
  depends_on = [ aws_internet_gateway.myvpc-internet-igw ]
}
*/