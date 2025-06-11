variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default     = "mumbai"
  description = "mumbai region"
  type        = string
}

variable "sg_id" {
  default     = "sg-07f8c69a16d626b5f"
  description = "All TCP access"
  type        = string
}

variable "ami_id" {
  default = "ami-02521d90e7410d9f0" # Ubuntu ap-south-1
}

variable "subnet_id" {
  default = "subnet-0aed982d9531b1a12"
}

variable "sg_backend" {
  default     = "sg-06add2d3e3071a62b"
  description = "Allow access from frontend SG only"
  type        = string 
}