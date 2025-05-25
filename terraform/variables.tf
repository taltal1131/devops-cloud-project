variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "AWS Region"
  default     = "eu-north-1"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default     = "ami-0989fb15ce71ba39e"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t3.micro"
}

variable "key_name" {
  description = "EC2 SSH Key Name (must exist in AWS)"
  default     = "github-key"
}
