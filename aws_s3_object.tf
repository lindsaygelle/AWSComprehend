resource "aws_s3_object" "comprehend" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "comprehend/"
}

resource "aws_s3_object" "detect_dominant_language" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "${aws_s3_object.comprehend.key}detect_dominant_language/"
}

resource "aws_s3_object" "detect_entities" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "${aws_s3_object.comprehend.key}detect_entities/"
}

resource "aws_s3_object" "detect_key_phrases" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "${aws_s3_object.comprehend.key}detect_key_phrases/"
}

resource "aws_s3_object" "detect_pii_entities" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "${aws_s3_object.comprehend.key}detect_pii_entities/"
}

resource "aws_s3_object" "detect_sentiment" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "${aws_s3_object.comprehend.key}detect_sentiment/"
}

resource "aws_s3_object" "detect_syntax" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "${aws_s3_object.comprehend.key}detect_syntax/"
}

resource "aws_s3_object" "detect_targeted_sentiment" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "${aws_s3_object.comprehend.key}detect_targeted_sentiment/"
}

resource "aws_s3_object" "detect_toxic_content" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "${aws_s3_object.comprehend.key}detect_toxic_content/"
}

resource "aws_s3_object" "text" {
  bucket           = aws_s3_bucket.main.id
  content_language = "en-US"
  content_type     = "application/x-directory"
  force_destroy    = true
  key              = "text/"
}
