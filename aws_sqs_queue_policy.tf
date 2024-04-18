resource "aws_sqs_queue_policy" "s3_object_created_text" {
  policy    = data.aws_iam_policy_document.sqs.json
  queue_url = aws_sqs_queue.s3_object_created_text.id
}
