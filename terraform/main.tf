provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "devops_instance" {
  ami           = var.ami_id                      # ✅ לקוח מקובץ tfvars
  instance_type = var.instance_type               # ✅ גם כן מקובץ tfvars
  key_name      = var.key_name

  tags = {
    Name = "DevOpsApp"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y docker",
      "sudo systemctl start docker",
      "sudo usermod -a -G docker ec2-user"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }
}
