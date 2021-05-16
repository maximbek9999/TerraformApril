data "terraform_remote_state" "s3_state" {
  backend = "s3"
  config = {
      bucket = "terraformmax" # bucket with your tfstate file which we specifyed in backend
      key = "dev/review-first.tfstate"
      region = "us-east-1"
  }
}