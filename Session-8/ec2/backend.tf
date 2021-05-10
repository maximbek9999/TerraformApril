terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "dev/session-8.tfstate"
    region = "us-east-1"
  }
}
