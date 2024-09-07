provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "main_instance" {
  ami = "ami-0e04bcbe83a83792e"
  instance_type = "t2.micro" 
  tags = {
    "Name": "test"
  } 
}

resource "aws_instance" "test_instance" {
  ami = "ami-0e04bcbe83a83792e"
  instance_type = "t2.invalid" 
  tags = {
    "Name": "to-fix"
  } 
}

variable "aws_region" {
  description = "The AWS region to deploy resources"
  default     = "eu-central-1"
}
