data "aws_iam_policy_document" "sqs" {
  statement {
    actions = ["sqs:SendMessage"]
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [
      aws_sqs_queue.s3_object_created_text.arn
    ]
    condition {
      test     = "ArnLike"
      variable = "aws:SourceArn"
      values = [
        aws_s3_bucket.main.arn
      ]
    }
  }
}
