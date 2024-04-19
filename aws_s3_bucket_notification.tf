resource "aws_s3_bucket_notification" "main" {
  bucket = aws_s3_bucket.main.id

  depends_on = [
    aws_sqs_queue_policy.s3_object_created_detect_dominant_language,
    aws_sqs_queue_policy.s3_object_created_detect_entities,
    aws_sqs_queue_policy.s3_object_created_detect_key_phrases,
    aws_sqs_queue_policy.s3_object_created_detect_pii_entities,
    aws_sqs_queue_policy.s3_object_created_detect_sentiment,
    aws_sqs_queue_policy.s3_object_created_detect_syntax,
    aws_sqs_queue_policy.s3_object_created_detect_targeted_sentiment,
    aws_sqs_queue_policy.s3_object_created_detect_toxic_content,
    aws_sqs_queue_policy.s3_object_created_text
  ]

  queue {
    events        = ["s3:ObjectCreated:Put"]
    filter_prefix = aws_s3_object.detect_dominant_language.key
    filter_suffix = ".json"
    id            = aws_sqs_queue.s3_object_created_detect_dominant_language.id
    queue_arn     = aws_sqs_queue.s3_object_created_detect_dominant_language.arn
  }

  queue {
    events        = ["s3:ObjectCreated:Put"]
    filter_prefix = aws_s3_object.detect_entities.key
    filter_suffix = ".json"
    id            = aws_sqs_queue.s3_object_created_detect_entities.id
    queue_arn     = aws_sqs_queue.s3_object_created_detect_entities.arn
  }

  queue {
    events        = ["s3:ObjectCreated:Put"]
    filter_prefix = aws_s3_object.detect_key_phrases.key
    filter_suffix = ".json"
    id            = aws_sqs_queue.s3_object_created_detect_key_phrases.id
    queue_arn     = aws_sqs_queue.s3_object_created_detect_key_phrases.arn
  }

  queue {
    events        = ["s3:ObjectCreated:Put"]
    filter_prefix = aws_s3_object.detect_pii_entities.key
    filter_suffix = ".json"
    id            = aws_sqs_queue.s3_object_created_detect_pii_entities.id
    queue_arn     = aws_sqs_queue.s3_object_created_detect_pii_entities.arn
  }

  queue {
    events        = ["s3:ObjectCreated:Put"]
    filter_prefix = aws_s3_object.detect_sentiment.key
    filter_suffix = ".json"
    id            = aws_sqs_queue.s3_object_created_detect_sentiment.id
    queue_arn     = aws_sqs_queue.s3_object_created_detect_sentiment.arn
  }

  queue {
    events        = ["s3:ObjectCreated:Put"]
    filter_prefix = aws_s3_object.detect_syntax.key
    filter_suffix = ".json"
    id            = aws_sqs_queue.s3_object_created_detect_syntax.id
    queue_arn     = aws_sqs_queue.s3_object_created_detect_syntax.arn
  }

  queue {
    events        = ["s3:ObjectCreated:Put"]
    filter_prefix = aws_s3_object.detect_targeted_sentiment.key
    filter_suffix = ".json"
    id            = aws_sqs_queue.s3_object_created_detect_targeted_sentiment.id
    queue_arn     = aws_sqs_queue.s3_object_created_detect_targeted_sentiment.arn
  }

  queue {
    events        = ["s3:ObjectCreated:Put"]
    filter_prefix = aws_s3_object.text.key
    filter_suffix = ".txt"
    id            = aws_sqs_queue.s3_object_created_text.id
    queue_arn     = aws_sqs_queue.s3_object_created_text.arn
  }

  queue {
    events        = ["s3:ObjectCreated:Put"]
    filter_prefix = aws_s3_object.detect_toxic_content.key
    filter_suffix = ".json"
    id            = aws_sqs_queue.s3_object_created_detect_toxic_content.id
    queue_arn     = aws_sqs_queue.s3_object_created_detect_toxic_content.arn
  }
}
