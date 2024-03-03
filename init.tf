# Terraform 0.13 and later
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.39"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}