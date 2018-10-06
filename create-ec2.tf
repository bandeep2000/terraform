provider "aws" {
 region = "us-east-1"
}

variable "key" {
  type    = "string"
  default = "value"
}
resource "aws_instance" "example" {
 ami = "ami-04681a1dbd79675a5"
 instance_type = "t2.micro"
 key_name = "ban1-1-2"
 tags {
  Name = "${var.key}"
 }
}
