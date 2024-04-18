resource "aws_s3_bucket_accelerate_configuration" "main" {
  bucket = aws_s3_bucket.main.id
  status = "Suspended"
}
