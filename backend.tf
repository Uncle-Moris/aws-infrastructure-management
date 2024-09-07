terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-mauwoz1122"
    key            = "terraform/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}