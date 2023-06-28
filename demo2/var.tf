variable "machine_type" {
  description = "This used for instance"
  type = string
  default = "t2.micro"
}

variable "machine_count" {
  description = "This is the number of machines"
  type = number
  default = 1
}