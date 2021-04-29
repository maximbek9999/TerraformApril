terraform {
  backend "s3" {
    bucket = "terraformmax"
    key    = "dev/session-6-task.tfstate"
    region = "us-east-1"
  }
}
