# Provider Configuration
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version =   #terraform decides on the version
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}