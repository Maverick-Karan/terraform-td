output "backend_public_ip" {
  description = "Public IP address of the Flask backend EC2 instance"
  value       = aws_instance.backend.public_ip
}

output "frontend_public_ip" {
  description = "Public IP address of the Node.js frontend EC2 instance"
  value       = aws_instance.frontend.public_ip
}

output "frontend_url" {
  description = "HTTP URL to access the frontend Node.js app"
  value       = "http://${aws_instance.frontend.public_ip}:3000"
}
