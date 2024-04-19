resource "aws_iam_role_policy" "source" {
  role = aws_iam_role.example.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "sqs:DeleteMessage",
          "sqs:GetQueueAttributes",
          "sqs:ReceiveMessage",
        ]
        Resource = aws_sqs_queue.s3_object_created_text.arn,
      },
    ]
  })
}

resource "aws_iam_role_policy" "target" {
  role = aws_iam_role.example.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["sqs:SendMessage"]
        Resource = aws_sqs_queue.target.arn,
      },
    ]
  })
}

resource "aws_sqs_queue" "target" {}

resource "aws_pipes_pipe" "example" {
  depends_on = [aws_iam_role_policy.source, aws_iam_role_policy.target]
  name       = "example-pipe"
  role_arn   = aws_iam_role.example.arn
  source     = aws_sqs_queue.s3_object_created_text.arn # Modified source queue
  target     = aws_sqs_queue.target.arn
}
