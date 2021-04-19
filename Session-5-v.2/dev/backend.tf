terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "dev/instance.tfstate"
    region = "us-east-1"
  }
}
