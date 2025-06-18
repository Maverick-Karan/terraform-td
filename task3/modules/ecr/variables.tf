variable "flask_repo_name" {
  description = "Name of the ECR repo for the Flask backend"
  type        = string
  default     = "backend"
}

variable "express_repo_name" {
  description = "Name of the ECR repo for the Express frontend"
  type        = string
  default     = "frontend"
}
