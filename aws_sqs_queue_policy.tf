resource "aws_sqs_queue_policy" "s3_object_created_detect_dominant_language" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_detect_dominant_language.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_entities" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_detect_entities.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_key_phrases" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_detect_key_phrases.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_pii_entities" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_detect_pii_entities.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_sentiment" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_detect_sentiment.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_syntax" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_detect_syntax.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_targeted_sentiment" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_detect_targeted_sentiment.id
}

resource "aws_sqs_queue_policy" "s3_object_created_detect_toxic_content" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_detect_toxic_content.id
}

resource "aws_sqs_queue_policy" "s3_object_created_document" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_document.id
}

resource "aws_sqs_queue_policy" "s3_object_created_text" {
  policy    = data.aws_iam_policy_document.sqs_queue_s3_bucket_notification.json
  queue_url = aws_sqs_queue.s3_object_created_text.id
}
