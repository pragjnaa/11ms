provider "aws" {
  region = var.region
}

# S3 Bucket 1
resource "aws_s3_bucket" "bucket1" {
  bucket = var.bucket1_name

  tags = {
    Name        = var.bucket1_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "bucket1_versioning" {
  bucket = aws_s3_bucket.bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}

# S3 Bucket 2
resource "aws_s3_bucket" "bucket2" {
  bucket = var.bucket2_name

  tags = {
    Name        = var.bucket2_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "bucket2_versioning" {
  bucket = aws_s3_bucket.bucket2.id
  versioning_configuration {
    status = "Enabled"
  }
}
