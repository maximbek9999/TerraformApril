terraform {
  backend "s3" {
      bucket = "terraformmax" 
      key = "qa/instance.tfstate" # you declair your own path in s3 they way you want to 
      region = "us-east-1"
  }
} 