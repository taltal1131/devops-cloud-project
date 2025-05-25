output "instance_id" {
  value = aws_instance.devops_instance.id
}

output "public_ip" {
  value = aws_instance.devops_instance.public_ip
}

output "ssh_command" {
  value = "ssh -i github-key.pem ec2-user@${aws_instance.devops_instance.public_ip}"
}
