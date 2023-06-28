terraform {
  required_version = "1.4.5" # applied to the version of the client
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }

  }

  backend "s3" {
    bucket = "my-terraform-state4558"
    key    = "dev/dev-terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-dev-state-table"
  }
}


