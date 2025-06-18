variable "cluster_name" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "front_sg_id" {
  type = string
}

variable "back_sg_id" {
  type = string
}

variable "express_tg_arn" {
  type = string
}

variable "flask_tg_arn" {
  type = string
}

variable "frontend_task_def" {
  type = string
}

variable "backend_task_def" {
  type = string
}
