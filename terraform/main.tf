
provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "deployer" {
  key_name   = "terraform-generated-key"
  public_key = tls_private_key.example.public_key_openssh
}

resource "aws_instance" "devops_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.deployer.key_name

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = tls_private_key.example.private_key_pem
      host        = self.public_ip
    }

    inline = [
      "docker run -d -p 3000:3000 taltal1131/devops-full-app:latest"
    ]
  }

  tags = {
    Name = "DevOpsInstance"
  }
}
