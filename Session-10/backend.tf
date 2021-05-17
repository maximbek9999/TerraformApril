terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "session-10/dev/main.tfstate"
    region = "us-east-1"
  }
}