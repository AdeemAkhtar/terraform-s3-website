output "bucket_name" {
  value = aws_s3_bucket.mybucket.id
}
output "bucket_arn" {
  value = aws_s3_bucket.mybucket.arn
}

output "website_url" {
  description = "The URL of the S3 bucket website"
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
}