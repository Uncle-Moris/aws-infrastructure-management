module "security_group" {
  source = "./modules/security_group"

  name        = "allow_ssh_http"
  description = "Security group allowing SSH and HTTP access"
  vpc_id      = var.vpc_id

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  tags = {
    Name = "Allow_SSH_HTTP"
  }
}

module "ec2_instance" {
  source = "./modules/ec2"

  ami           = var.ami
  instance_type = var.instance_type
  security_group_ids = [module.security_group.security_group_id]
  
  tags = {
    Name = "EC2Instance"
  }
}
