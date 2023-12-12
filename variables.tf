variable "ami" {
  description = "EC2 instance AMI ID"
  default     = "ami-02a2af70a66af6dfb"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "availability_zone" {
  description = "The availability zone for the EC2 instance."
  type        = string
  default     = "ap-south-1a"
}

variable "iam_instance_profile" {
  description = "EC2 instance IAM instance profile name"
  default     = "ec2-permissons"
}

variable "key_name" {
  description = "EC2 instance key pair name"
  default     = "public-cli-keypair"
}

variable "security_groups" {
  description = "Security group for the EC2 instance"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  default     = "subnet-0b4304641787d445a"  # Update with a valid subnet ID
}

variable "tags" {
  type    = map(string)
  default = {
    Name        = "TF-Instance"
    Environment = "Dev"
  }
}

variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "s3_bucket" {
  type    = string
  default = "jenkins-s3-dynamo-bucket"
}
