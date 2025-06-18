variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "List of Availability Zones"
  type        = list(string)
}

variable "subnet_cidrs" {
  description = "List of subnet CIDRs"
  type        = list(string)
}
