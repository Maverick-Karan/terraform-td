output "flask_repo_url" {
  description = "URL of the Flask backend ECR repo"
  value       = aws_ecr_repository.flask.repository_url
}

output "express_repo_url" {
  description = "URL of the Express frontend ECR repo"
  value       = aws_ecr_repository.express.repository_url
}
