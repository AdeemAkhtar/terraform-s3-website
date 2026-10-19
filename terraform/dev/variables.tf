# This file contains the variable definitions for the Terraform configuration.

# The variables defined here can be used to customize the behavior of the Terraform configuration.
variable "aws_region" {
  type    = string
  default = "us-east-1"
}

# The environment variable can be used to specify the environment for which the Terraform configuration is being applied (e.g., dev, staging, prod).
variable "environment" {
  type = string
  default = "dev"
}

# The bucket_name variable can be used to specify the name of the S3 bucket to be created.
variable "bucket_name" {
  type    = string
  default = "my-unique-bucket-newmybucket-213214321"
}

# The s3_state_bucket variable can be used to specify the name of the S3 bucket where the Terraform state file will be stored.
variable "s3_state_bucket" {
  type    = string
  default = "terraform-state-adeem-2026"
}

# The s3_key variable can be used to specify the key (path) within the S3 bucket where the Terraform state file will be stored.
variable "s3_key" {
  type    = string
  default = "terraform-s3-website/dev/terraform.tfstate"
}