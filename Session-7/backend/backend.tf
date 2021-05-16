terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "dev/session-8-rds.tfstate"
    region = "us-east-1"
  }
}
