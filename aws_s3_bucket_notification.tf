resource "aws_s3_bucket_notification" "main" {
  bucket = aws_s3_bucket.main.id
}
