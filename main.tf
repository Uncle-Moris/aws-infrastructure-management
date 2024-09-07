module "ec2_instance" {
  source             = "./modules/ec2"
  ami                = var.ami
  instance_type      = var.instance_type

  tags = {
    Name = "HG" 
  }
}