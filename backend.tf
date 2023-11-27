terraform {
  backend "s3" {
    bucket         = "jenkins-pipeline-ec2"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "jenkins-s3"
  }
}
