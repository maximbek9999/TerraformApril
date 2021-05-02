terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "dev/frontend.tfstate"
    region = "us-east-1"
  }
}
