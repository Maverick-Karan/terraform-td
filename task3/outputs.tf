output "frontend_alb_url" {
  description = "Public ALB URL to access the Express frontend"
  value       = "http://${module.alb.alb_dns}:3000"
}

output "backend_alb_url" {
  description = "Public ALB URL to access the Flask backend"
  value       = "http://${module.alb.backend_alb_dns}:5000"
}

output "flask_backend_url_internal" {
  description = "Internal access URL from Express to Flask"
  value       = "http://${module.alb.backend_alb_dns}:5000/submit"
}
