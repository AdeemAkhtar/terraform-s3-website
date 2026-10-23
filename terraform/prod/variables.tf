variable "aws_region" {
  description = "AWS region for the production website infrastructure."
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "prod"
}

variable "bucket_name" {
  description = "Base name for the production website bucket."
  type        = string
  default     = "my-unique-bucket-newmybucket-213214321"
}

variable "cloudfront_price_class" {
  description = "CloudFront price class to control edge-location coverage and cost."
  type        = string
  default     = "PriceClass_100"
}
