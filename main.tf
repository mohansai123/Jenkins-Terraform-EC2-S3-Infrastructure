provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = var.availability_zone
  iam_instance_profile   = var.iam_instance_profile
  key_name               = var.key_name
  security_groups        = var.security_groups
  subnet_id              = var.subnet_id
  tags                   = var.tags
}
