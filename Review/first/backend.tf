terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "dev/review-first.tfstate"
    region = "us-east-1"
  }
}
