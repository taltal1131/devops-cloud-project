provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

locals {
  unique_key_name = "${var.key_name}-${timestamp()}"
}

resource "aws_key_pair" "generated_key" {
  key_name   = local.unique_key_name
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
}

resource "aws_instance" "devops_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.generated_key.key_name
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y docker.io
              systemctl start docker
              systemctl enable docker
              docker run -d -p 3000:3000 taltal1131/devops-full-app:latest
              EOF

  tags = {
    Name = "DevOpsInstance"
  }
}
