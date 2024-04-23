resource "aws_s3_object" "text" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "text/"
}
