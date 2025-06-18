output "backend_task_arn" {
  description = "Task definition ARN for flask"
  value       = aws_ecs_task_definition.backend.arn
}

output "frontend_task_arn" {
  description = "Task definition ARN for express"
  value       = aws_ecs_task_definition.frontend.arn
}