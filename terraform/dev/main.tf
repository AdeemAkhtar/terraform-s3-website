resource "aws_s3_bucket" "mybucket" {
  bucket = "${var.bucket_name}-${var.environment}"

  tags = {
    Name        = "MyBucket"
    Environment = var.environment
  }
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }
}


resource "aws_s3_bucket_public_access_block" "website" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "website" {
  bucket = aws_s3_bucket.mybucket.id

  depends_on = [
    aws_s3_bucket_public_access_block.website
  ]

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadWebsiteFiles"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.mybucket.arn}/*"
      }
    ]
  })
}


resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.mybucket.bucket
  key    = "index.html"
  source = "../../website/index.html"

  tags = {
    Name        = "index object"
    Environment = var.environment
  }
}

resource "aws_s3_object" "style" {
  bucket = aws_s3_bucket.mybucket.bucket
  key    = "style.css"
  source = "../../website/style.css"

  tags = {
    Name        = "style object"
    Environment = var.environment
  }
}