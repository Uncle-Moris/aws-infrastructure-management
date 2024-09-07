terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-mauwoz1122"
    key            = "terraform/terraform.tfstate"            
    region         = "eu-central-1"                          
    dynamodb_table = "terraform-state-locks"              
    encrypt        = true                                 
  }
}


provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "main_instance" {
  ami = "ami-0e04bcbe83a83792e"
  instance_type = "t2.micro" 
  tags = {
    "Name": "test 12"
  } 
}

variable "aws_region" {
  description = "The AWS region to deploy resources"
  default     = "eu-central-1"
}
