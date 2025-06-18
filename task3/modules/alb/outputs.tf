output "alb_dns" {
  description = "Public DNS name of the frontend ALB"
  value       = aws_lb.alb_front.dns_name
}

output "backend_alb_dns" {
  description = "Public DNS name of the backend ALB"
  value       = aws_lb.alb_back.dns_name
}

output "express_tg_arn" {
  description = "Target Group ARN for Express"
  value       = aws_lb_target_group.frontend_tg.arn
}

output "flask_tg_arn" {
  description = "Target Group ARN for Flask"
  value       = aws_lb_target_group.backend_tg.arn
}
