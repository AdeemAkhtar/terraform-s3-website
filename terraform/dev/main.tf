resource "aws_s3_bucket" "mybucket" {
  bucket = "${var.bucket_name}-${var.environment}"

  tags = {
    Name        = "MyBucket"
    Environment = var.environment
  }
}

# resource "aws_s3_object" "index" {
#   bucket = aws_s3_bucket.mybucket.bucket
#   key    = "index.html"
#   source = "../../website/index.html"

#   tags = {
#     Name        = "index object"
#     Environment = var.environment
#   }
# }

# resource "aws_s3_object" "style" {
#   bucket = aws_s3_bucket.mybucket.bucket
#   key    = "style.css"
#   source = "../../website/style.css"

#   tags = {
#     Name        = "style object"
#     Environment = var.environment
#   }
# }