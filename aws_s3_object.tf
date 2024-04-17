resource "aws_s3_object" "text" {
  bucket = aws_s3_bucket.main.id
  content_type = "application/x-directory"
  key          = "text/"
}
