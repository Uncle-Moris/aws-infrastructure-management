variable "ami" {
  description = "The AMI ID for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance."
  type        = string
  default     = "t2.micro"
}

variable "tags" {
  description = "Tags to assign to the EC2 instance."
  type        = map(string)
}