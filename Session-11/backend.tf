terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "main.tfstate"
    region = "us-east-1"
    workspace_key_prefix = "Session-11"
  }
}