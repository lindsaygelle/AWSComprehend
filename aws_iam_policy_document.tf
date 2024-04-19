data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_detect_dominant_language" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
    sid = "pipes-pip-s3-object-created-detect-dominant-language"
  }
}

data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_detect_entities" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
    sid = "pipes-pipe-s3-object-created-detect-entities"
  }
}

data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_detect_key_phrases" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
    sid = "pipes-pipe-s3-object-created-detect-key-phrases"
  }
}

data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_detect_pii_entities" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
    sid = "pipes-pipe-s3-object-created-detect-pii-entities"
  }
}

data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_detect_sentiment" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
    sid = "pipes-pipe-s3-object-created-detect-sentiment"
  }
}

data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_detect_syntax" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
    sid = "pipes-pipe-s3-object-created-detect-syntax"
  }
}

data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_detect_targeted_sentiment" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
    sid = "pipes-pipe-s3-object-created-detect-targeted-sentiment"
  }
}

data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_detect_toxic_content" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
    sid = "pipes-pipe-s3-object-created-detect-toxic-content"
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
    sid = "pipes-pipe-s3-object-created-text"
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_detect_dominant_language" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_detect_dominant_language.arn
    ]
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_detect_entities" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_detect_entities.arn
    ]
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_detect_key_phrases" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_detect_key_phrases.arn
    ]
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_detect_pii_entities" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_detect_pii_entities.arn
    ]
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_detect_sentiment" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_detect_sentiment.arn
    ]
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_detect_syntax" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_detect_syntax.arn
    ]
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_detect_targeted_sentiment" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_detect_targeted_sentiment.arn
    ]
  }
}

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_detect_toxic_content" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_detect_toxic_content.arn
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
}

data "aws_iam_policy_document" "sqs_queue_s3_bucket_notification" {
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

    sid = "sqs-queue-s3-bucket-notification"
  }
}
