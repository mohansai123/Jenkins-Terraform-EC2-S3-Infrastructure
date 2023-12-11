terraform {
  backend "s3" {
    bucket         = "project1-s3-bucket-1"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "s3-table-1"
  }
}
