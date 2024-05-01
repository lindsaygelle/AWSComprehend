data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_comprehend" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
  }
}

data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_text" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_s3_object_created_comprehend" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_s3_object_created_text" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_comprehend" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_comprehend.arn
    ]
  }
  statement {
    actions = [
      "states:StartExecution"
    ]
    effect = "Allow"
    resources = [
      aws_sfn_state_machine.s3_object_created_comprehend.arn
    ]
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_text" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_text.arn
    ]
  }
  statement {
    actions = [
      "states:StartExecution"
    ]
    effect = "Allow"
    resources = [
      aws_sfn_state_machine.s3_object_created_text.arn
    ]
  }
}

data "aws_iam_policy_document" "sfn_state_machine_s3_object_created_comprehend" {
  statement {
    actions = [
      "S3:GetObject",
      "S3:GetObjectVersion"
    ]
    effect = "Allow"
    resources = [
      "${aws_s3_bucket.main.arn}/${aws_s3_object.comprehend.key}*"
    ]
  }

  statement {
    actions = [
      "S3:PutObject"
    ]
    effect = "Allow"
    resources = [
      "${aws_s3_bucket.main.arn}/${aws_s3_object.datalake.key}*"
    ]
  }
}

data "aws_iam_policy_document" "sfn_state_machine_s3_object_created_text" {
  statement {
    actions = [
      "S3:GetObject",
      "S3:GetObjectVersion"
    ]
    effect = "Allow"
    resources = [
      "${aws_s3_bucket.main.arn}/${aws_s3_object.text.key}*"
    ]
  }

  statement {
    actions = [
      "S3:PutObject"
    ]
    effect = "Allow"
    resources = [
      "${aws_s3_bucket.main.arn}/${aws_s3_object.comprehend.key}*"
    ]
  }

  statement {
    actions = [
      "comprehend:DetectDominantLanguage",
      "comprehend:DetectEntities",
      "comprehend:DetectKeyPhrases",
      "comprehend:DetectPiiEntities",
      "comprehend:DetectSentiment",
      "comprehend:DetectSyntax",
      "comprehend:DetectTargetedSentiment",
      "comprehend:DetectToxicContent"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }
}

data "aws_iam_policy_document" "sqs_queue_s3_bucket_notification_created_comprehend" {
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
      aws_sqs_queue.s3_object_created_comprehend.arn
    ]
  }
}

data "aws_iam_policy_document" "sqs_queue_s3_bucket_notification_created_text" {
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
      aws_sqs_queue.s3_object_created_text.arn
    ]
  }
}
