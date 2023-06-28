
/*
resource "aws_iam_user" "myappusers" {
  
  for_each = toset(["Mangesh1", "Amit-1", "Abhijoy"])
  name = each.key

}


resource "aws_s3_bucket" "myappbuckets" {
  for_each = {
    dev = "mydevapp-4558"
    qa = "myqaapp4558"
    prod = "myprodapp4558"
  }
  bucket = "${each.key}-${each.value}"
  tags = {
    environment = each.key
    bucketvalue = each.value
  }
}

*/