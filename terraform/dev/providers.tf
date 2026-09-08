terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0.0"
    }
  }
}

# Configuring AWS Provider
provider "aws" {
  region = var.aws_region
}