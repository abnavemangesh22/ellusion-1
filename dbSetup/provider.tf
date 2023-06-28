# Method 1

/*
provider "aws" {
  access_key = "AKIAQBBIKCJQDJPZXHWS"
  secret_key = "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"
  region     = "ap-south-1"
}
*/


# Method - 2
# thru aws cli method
provider "aws" {
  profile = "default"
  region  = var.aws_region
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
  alias   = "singapore"
}




# Method - 3
# setup the credentials with env.data "
/*  
$ export AWS_ACCESS_KEY_ID="anaccesskey"
$ export AWS_SECRET_ACCESS_KEY="asecretkey"
$ export AWS_REGION="us-west-2"
*/

/*
provider "aws" {
  }
*/


