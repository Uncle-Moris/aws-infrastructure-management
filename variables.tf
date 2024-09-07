variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance."
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance."
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "environment" {
  description = "The deployment environment (e.g., dev, prod)."
  type        = string
}
