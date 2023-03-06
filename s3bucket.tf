resource "aws_s3_bucket" "assign" {
  bucket = var.bucket_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.assign.id
  versioning_configuration {
    status = "Enabled"
  }
}