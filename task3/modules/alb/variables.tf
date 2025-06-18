variable "vpc_id" {
  description = "VPC ID for the ALB and target groups"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}

variable "front_sg_id" {
  description = "Security group for the frontend"
  type        = string
}

variable "back_sg_id" {
  description = "Security group for the backend"
  type        = string
}
