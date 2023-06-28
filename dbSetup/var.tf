
variable "aws_region" {
  description = "Region in which we are setting our ec2"
  type = string
  default = "ap-south-1"
}

variable "ec2_ami_id" {
  description = "This is my AMI_ID"
  type = string
  default = "ami-012b9156f755804f5"
}

variable "m_count" {
  description = "Number of the Machines"
  type = number
  default = 1
}
/*
variable "machine_type" {
  description = "This is machine type"
  type = list(string)
  default = ["t2.micro", "t3.medium", "t3.xlarge"]
}
*/


variable "machine_type" {
  description = "This is machine type"
  type = map(string)
  default = {
    "small-apps" = "t2.micro"
    "medium-apps" = "t3.medium"
    "large-apps" = "t3.large"
  }
}

variable "db_username" {
  description = "This is db username"
  type = string
  sensitive = true
}

variable "db_password" {
  description = "this is db password"
  type = string
  sensitive = true
}