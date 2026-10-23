variable "aws_region" {
  description = "AWS region for the website infrastructure."
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

variable "bucket_name" {
  description = "Base name for the website bucket."
  type        = string
  default     = "my-unique-bucket-newmybucket-213214321"
}

variable "s3_state_bucket" {
  description = "Existing S3 bucket used for Terraform state."
  type        = string
  default     = "terraform-state-adeem-2026"
}

variable "s3_key" {
  description = "Existing remote Terraform state key."
  type        = string
  default     = "terraform-s3-website/dev/terraform.tfstate"
}

variable "cloudfront_price_class" {
  description = "CloudFront price class to control edge-location coverage and cost."
  type        = string
  default     = "PriceClass_100"
}
