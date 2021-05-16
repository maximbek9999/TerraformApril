terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "dev/review-second.tfstate"
    region = "us-east-1"
  }
}
