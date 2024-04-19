data "aws_iam_policy_document" "aws_s3_bucket_notification_object_created" {
  statement {
    actions = ["SQS:SendMessage"]

    condition {
      test     = "ArnLike"
      values   = [aws_s3_bucket.main.arn]
      variable = "aws:SourceArn"
    }

    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }

    resources = [
      aws_sqs_queue.s3_object_created_detect_dominant_language.arn,
      aws_sqs_queue.s3_object_created_detect_entities.arn,
      aws_sqs_queue.s3_object_created_detect_key_phrases.arn,
      aws_sqs_queue.s3_object_created_detect_pii_entities.arn,
      aws_sqs_queue.s3_object_created_detect_sentiment.arn,
      aws_sqs_queue.s3_object_created_detect_syntax.arn,
      aws_sqs_queue.s3_object_created_detect_targeted_sentiment.arn,
      aws_sqs_queue.s3_object_created_detect_toxic_content.arn,
      aws_sqs_queue.s3_object_created_text.arn
    ]
  }
}
