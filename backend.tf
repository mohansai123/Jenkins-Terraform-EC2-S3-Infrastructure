terraform {
  backend "s3" {
    bucket         = "project1-s3-bucket-1"
    key            = "public-cli-keypair"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "project-1table"
  }
}
