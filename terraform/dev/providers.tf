terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0.0"
    }
  }

  backend "s3" {
    bucket       = "terraform-state-adeem-2026"
    key          = "terraform-s3-website/dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

# Configuring AWS Provider
provider "aws" {
  region = var.aws_region
}

