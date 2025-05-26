
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
variable "ec2_private_key" {
  description = "The private key to connect to EC2 (used for SSH if needed)"
  type        = string
  sensitive   = true
}