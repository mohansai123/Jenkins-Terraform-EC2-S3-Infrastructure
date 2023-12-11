terraform {
  backend "s3" {
    bucket         = "jenkins-s3-dynamo-bucket"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "jenkins-dynamodb"
  }
}
