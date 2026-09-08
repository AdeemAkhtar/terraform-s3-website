output "bucket_name" {
  value = aws_s3_bucket.mybucket.id
}
output "bucket_arn" {
  value = aws_s3_bucket.mybucket.arn
}