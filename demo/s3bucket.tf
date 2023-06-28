
variable "app_name" {
  description = "This is an application name"
  type = string
  default = "mycrm-v-1"
}


variable "env_name" {
  description = "This is the name of the environment"
  type = string
  default = "production"
}

/*
resource "aws_s3_bucket" "myappbucket" {
  bucket = "${var.app_name}-${var.env_name}-bucket"
  tags = {
    Name = "${var.app_name}-${var.env_name}"
  }
}
*/

locals {
  bucket_name = "${var.app_name}-${var.env_name}"
}

resource "aws_s3_bucket" "myappbucket" {
  bucket = "${local.bucket_name}-bucket"
  tags = {
    Name = local.bucket_name
  }
}