resource "aws_sqs_queue_policy" "s3_object_created_detect_dominant_language" {
  policy    = data.s3_object_created_detect_dominant_language_policy.json
  queue_url = aws_sqs_queue.s3_object_created_detect_dominant_language.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_entities" {
  policy    = data.s3_object_created_detect_entities_policy.json
  queue_url = aws_sqs_queue.s3_object_created_detect_entities.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_key_phrases" {
  policy    = data.s3_object_created_detect_key_phrases_policy.json
  queue_url = aws_sqs_queue.s3_object_created_detect_key_phrases.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_pii_entities" {
  policy    = data.s3_object_created_detect_pii_entities_policy.json
  queue_url = aws_sqs_queue.s3_object_created_detect_pii_entities.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_sentiment" {
  policy    = data.s3_object_created_detect_sentiment_policy.json
  queue_url = aws_sqs_queue.s3_object_created_detect_sentiment.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_syntax" {
  policy    = data.s3_object_created_detect_syntax_policy.json
  queue_url = aws_sqs_queue.s3_object_created_detect_syntax.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_targeted_sentiment" {
  policy    = data.s3_object_created_detect_targeted_sentiment_policy.json
  queue_url = aws_sqs_queue.s3_object_created_detect_targeted_sentiment.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_toxic_content" {
  policy    = data.s3_object_created_detect_toxic_content_policy.json
  queue_url = aws_sqs_queue.s3_object_created_detect_toxic_content.id
}

resource "aws_sqs_queue_policy" "s3_object_created_text" {
  policy    = data.s3_object_created_text_policy.json
  queue_url = aws_sqs_queue.s3_object_created_text.id
}
