output "public_ip" {
  value       = aws_instance.terraform.public_ip
  description = "This is public id of instance created"
  sensitive   = false
}