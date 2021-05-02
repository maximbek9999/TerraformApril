terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "dev/backend.tfstate"
    region = "us-east-1"
  }
}
