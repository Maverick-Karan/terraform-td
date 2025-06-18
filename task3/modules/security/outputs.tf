output "frontend_sg_id" {
  value = aws_security_group.sg_frontend.id
}

output "backend_sg_id" {
  value = aws_security_group.sg_backend.id
}

