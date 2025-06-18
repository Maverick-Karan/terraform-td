terraform {
  backend "s3" {
    bucket         = "td-remotestate"
    key            = "task3/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "task1-state-locking"
    encrypt        = "true"
  }
}