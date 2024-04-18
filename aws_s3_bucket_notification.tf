resource "aws_s3_bucket_notification" "main" {
  bucket = aws_s3_bucket.main.id

  queue {
    id            = aws_sqs_queue.s3_object_created_detect_dominant_language.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.detect_dominant_language.key
    filter_suffix = ".json"
    queue_arn     = aws_sqs_queue.s3_object_created_detect_dominant_language.arn
  }

  queue {
    id            = aws_sqs_queue.s3_object_created_detect_entities.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.detect_dominant_language.key
    filter_suffix = ".json"
    queue_arn     = aws_sqs_queue.s3_object_created_detect_entities.arn
  }

  queue {
    id            = aws_sqs_queue.s3_object_created_detect_key_phrases.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.detect_dominant_language.key
    filter_suffix = ".json"
    queue_arn     = aws_sqs_queue.s3_object_created_detect_key_phrases.arn
  }

  queue {
    id            = aws_sqs_queue.s3_object_created_detect_pii_entities.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.detect_dominant_language.key
    filter_suffix = ".json"
    queue_arn     = aws_sqs_queue.s3_object_created_detect_pii_entities.arn
  }

  queue {
    id            = aws_sqs_queue.s3_object_created_detect_sentiment.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.detect_dominant_language.key
    filter_suffix = ".json"
    queue_arn     = aws_sqs_queue.s3_object_created_detect_sentiment.arn
  }

  queue {
    id            = aws_sqs_queue.s3_object_created_detect_syntax.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.detect_dominant_language.key
    filter_suffix = ".json"
    queue_arn     = aws_sqs_queue.s3_object_created_detect_syntax.arn
  }

  queue {
    id            = aws_sqs_queue.s3_object_created_detect_targeted_sentiment.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.detect_dominant_language.key
    filter_suffix = ".json"
    queue_arn     = aws_sqs_queue.s3_object_created_detect_targeted_sentiment.arn
  }

  queue {
    id            = aws_sqs_queue.s3_object_created_detect_toxic_content.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.detect_dominant_language.key
    filter_suffix = ".json"
    queue_arn     = aws_sqs_queue.s3_object_created_detect_toxic_content.arn
  }

  queue {
    id            = aws_sqs_queue.s3_object_created_text.id
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = aws_s3_object.text.key
    filter_suffix = ".txt"
    queue_arn     = aws_sqs_queue.s3_object_created_text.arn
  }
}
