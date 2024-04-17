resource "aws_s3_bucket_notification" "main" {
  bucket = aws_s3_bucket.main.id

  queue {
    id            = aws_sqs_queue.s3_object_created_text.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.text.key
    queue_arn     = aws_sqs_queue.s3_object_created_text.arn
  }
}
