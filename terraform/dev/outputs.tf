# Output values for the S3 bucket
output "bucket_name" {
  value = aws_s3_bucket.mybucket.id
}

# Output value for the S3 bucket ARN
output "bucket_arn" {
  value = aws_s3_bucket.mybucket.arn
}

# Output value for the S3 bucket website endpoint
output "website_url" {
  description = "The URL of the S3 bucket website"
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
}