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
      {
        Effect = "Allow"
        Action = [
          "states:StartExecution"
        ]
        Resource = aws_sfn_state_machine.s3_object_created_text.arn
      }
    ]
  })
}

resource "aws_pipes_pipe" "sfn_state_machine_s3_object_created_text" {
  depends_on = [aws_iam_role_policy.source, aws_iam_role_policy.sfn_state_machine_s3_object_created_text]
  name       = aws_sfn_state_machine.s3_object_created_text.name
  role_arn   = aws_iam_role.example.arn
  source     = aws_sqs_queue.s3_object_created_text.arn # Modified source queue
  target     = aws_sfn_state_machine.s3_object_created_text.arn
  target_parameters {
    step_function_state_machine_parameters {
      invocation_type = "FIRE_AND_FORGET"
    }
  }
}
