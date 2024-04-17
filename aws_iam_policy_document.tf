resource "aws_iam_policy_document" "sqs_queue" {
  statement {
    actions   = ["sqs:SendMessage"]

    condition {
      test     = "ArnEquals"
      values   = [aws_s3_bucket.main.arn]
      variable = "aws:SourceArn"
    }

    effect = "Allow"

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    resources = ["arn:aws:sqs:*:*:s3-event-notification-queue"]
  }
}
