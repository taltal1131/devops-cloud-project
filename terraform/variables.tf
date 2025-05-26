
variable "region" {
  default = "eu-north-1"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "ami_id" {
  default = "ami-0c1a7f89451184c8b"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "github-key"
}
