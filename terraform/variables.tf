variable "aws_access_key" {
  type        = string
  description = "Your AWS access key"
}

variable "aws_secret_key" {
  type        = string
  description = "Your AWS secret key"
  sensitive   = true
}

variable "private_key_path" {
  type        = string
  description = "Path to your SSH private key"
}

variable "key_name" {
  type        = string
  description = "Name of your AWS EC2 key pair"
}
