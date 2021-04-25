terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "dev/session6.tfstate"
    region = "us-east-1"
  }
}
