variable "name" {
  description = "The name of the security group."
  type        = string
}

variable "description" {
  description = "The description of the security group."
  type        = string
  default     = "Managed by Terraform"
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created."
  type        = string
}

variable "ingress_rules" {
  description = "List of ingress (inbound) rules."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  description = "List of egress (outbound) rules."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "tags" {
  description = "Tags to assign to the security group."
  type        = map(string)
  default     = {}
}
