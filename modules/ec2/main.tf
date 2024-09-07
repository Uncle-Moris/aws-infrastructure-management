resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_group_ids
  tags = var.tags
}
