provider "aws" {
 region = "us-east-1"
}

variable "tag" {
  type    = "string"
  default = "machine"
}

variable "key" {
  type    = "string"
  default = "ban1-1-2"
}

variable "ami" {
  type    = "string"
  default = "ami-04681a1dbd79675a5"
}

variable "itype" {
  type    = "string"
  default = "t2.micro"
}
resource "aws_instance" "example" {
 ami = "${var.ami}"
 instance_type = "${var.itype}"
 key_name = "${var.key}"
 tags {
  Name = "${var.tag}"
 }
}
