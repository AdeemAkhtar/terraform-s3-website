variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "bucket_name" {
  type    = string
  default = "my-unique-bucket-newmybucket-213214321"
}

variable "s3_state_bucket" {
  type    = string
  default = "terraform-state-adeem-2026"
}

variable "s3_key" {
  type    = string
  default = "terraform-s3-website/dev/terraform.tfstate"
}