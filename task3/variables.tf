variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/24"
}

variable "subnet_cidr" {
  default = "10.0.0.0/26"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "subnet_cidrs" {
  description = "List of subnet CIDRs"
  type        = list(string)
  default     = ["10.0.0.0/26", "10.0.0.64/26"]
}