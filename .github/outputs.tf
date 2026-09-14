output "instance_id" {
  description = "Terraform-managed EC2 instance ID"
  value       = aws_instance.devops_ec2.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.devops_ec2.public_ip
}

output "public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.devops_ec2.public_dns
}
