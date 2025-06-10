terraform {
  backend "s3" {
    bucket         = "td-remotestate"
    key            = "task1/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "task1-state-locking"
    encrypt        = "true"
  }
}