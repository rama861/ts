#DNS of LoadBalancer

output "public_ip_address" {
  description = "public ip of instance"
  value       = aws_instance.fish.public_ip
}

