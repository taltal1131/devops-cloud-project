variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "private_key_path" {
  description = "Path to SSH private key"
  type        = string
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
}

variable "region" {
  description = "AWS region to deploy into"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to launch"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
