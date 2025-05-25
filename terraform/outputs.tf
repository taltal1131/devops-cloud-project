output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.devops_instance.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.devops_instance.public_ip
}

output "private_ip" {
  description = "Private IP of the EC2 instance"
  value       = aws_instance.devops_instance.private_ip
}

output "ssh_command" {
  description = "SSH connection command"
  value       = "ssh -i ${var.private_key_path} ec2-user@${aws_instance.devops_instance.public_ip}"
}
