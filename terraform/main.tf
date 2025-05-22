provider "aws" {
  region     = "eu-north-1" # סטוקהולם - Free Tier זמין
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "devops_instance" {
  ami           = "ami-06129dcfcca4f3fd4"  # Amazon Linux 2 – זמין ב־eu-north-1
  instance_type = "t3.micro"              # Free Tier (ב־eu-north-1 לא תומך ב־t2.micro)

  tags = {
    Name = "DevOpsApp"
  }

  key_name = var.key_name

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y docker",
      "sudo service docker start",
      "sudo usermod -a -G docker ec2-user",
      "newgrp docker"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }
}
