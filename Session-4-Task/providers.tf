terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
# "This is required providers and terraform version"

# Configure the AWS Provider and Region
provider "aws" {
  region = "us-east-1"
}