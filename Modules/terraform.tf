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
}


