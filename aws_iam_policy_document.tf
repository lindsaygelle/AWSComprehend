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
    // sid = "assume-role-pipes-pip-s3-object-created-detect-dominant-language"
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
    // sid = "assume-role-pipes-pipe-s3-object-created-detect-entities"
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
    // sid = "assume-role-pipes-pipe-s3-object-created-detect-key-phrases"
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
    // sid = "assume-role-pipes-pipe-s3-object-created-detect-pii-entities"
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
    // sid = "assume-role-pipes-pipe-s3-object-created-detect-sentiment"
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
    // sid = "assume-role-pipes-pipe-s3-object-created-detect-syntax"
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
    // sid = "assume-role-pipes-pipe-s3-object-created-detect-targeted-sentiment"
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
    // sid = "assume-role-pipes-pipe-s3-object-created-detect-toxic-content"
  }
}

data "aws_iam_policy_document" "assume_role_pipes_pipe_s3_object_created_document" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["pipes.amazonaws.com"]
      type        = "Service"
    }
    // sid = "assume-role-pipes-pipe-s3-object-created-text"
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
    // sid = "assume-role-pipes-pipe-s3-object-created-text"
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_comprehend_detect_dominant_language" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
    // sid = "pipes-pip-s3-object-created-detect-dominant-language"
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_comprehend_detect_entities" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
    // sid = "assume-role-sfn-state-machine-comprehend-detect-entities"
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_comprehend_detect_key_phrases" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
    // sid = "assume-role-sfn-state-machine-comprehend-detect-key-phrases"
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_comprehend_detect_pii_entities" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
    // sid = "assume-role-sfn-state-machine-comprehend-detect-pii-entities"
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_comprehend_detect_sentiment" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
    // sid = "assume-role-sfn-state-machine-comprehend-detect-sentiment"
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_comprehend_detect_syntax" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
    // sid = "assume-role-sfn-state-machine-comprehend-detect-syntax"
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_comprehend_detect_targeted_sentiment" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
    // sid = "assume-role-sfn-state-machine-comprehend-detect-targeted-sentiment"
  }
}

data "aws_iam_policy_document" "assume_role_sfn_state_machine_comprehend_detect_toxic_content" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["states.amazonaws.com"]
      type        = "Service"
    }
    // sid = "assume-role-sfn-state-machine-comprehend-detect-toxic-content"
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
    // sid = "assume-role-sfn-state-machine-comprehend-text"
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
  statement {
    actions = [
      "states:StartExecution"
    ]
    effect = "Allow"
    resources = [
      aws_sfn_state_machine.comprehend_detect_entities.arn
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

data "aws_iam_policy_document" "pipes_pipe_s3_object_created_document" {
  statement {
    actions = [
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:ReceiveMessage",
    ]
    effect = "Allow"
    resources = [
      aws_sqs_queue.s3_object_created_document.arn
    ]
  }
  statement {
    actions = [
      "states:StartExecution"
    ]
    effect = "Allow"
    resources = [
      aws_sfn_state_machine.comprehend_detect_dominant_language.arn
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
      "${aws_s3_bucket.main.arn}/${aws_s3_object.document.key}*"
    ]
  }
}

/*
data "aws_iam_policy_document" "sns_topic_s3_bucket_notification" {
  statement {
    actions = ["SNS:Publish"]

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
      aws_sns_topic.s3_object_created_detect_dominant_language.arn,
      aws_sns_topic.s3_object_created_detect_entities.arn,
      aws_sns_topic.s3_object_created_detect_key_phrases.arn,
      aws_sns_topic.s3_object_created_detect_pii_entities.arn,
      aws_sns_topic.s3_object_created_detect_sentiment.arn,
      aws_sns_topic.s3_object_created_detect_syntax.arn,
      aws_sns_topic.s3_object_created_detect_targeted_sentiment.arn,
      aws_sns_topic.s3_object_created_detect_toxic_content.arn,
      aws_sns_topic.s3_object_created_text.arn
    ]

    // sid = "sns-topic-s3-bucket-notification"
  }
}
*/

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
      aws_sqs_queue.s3_object_created_document.arn,
      aws_sqs_queue.s3_object_created_text.arn
    ]

    // sid = "sqs-queue-s3-bucket-notification"
  }
}

data "aws_iam_policy_document" "sfn_state_machine_comprehend_detect_dominant_language" {
  statement {
    actions = [
      "comprehend:DetectDominantLanguage",
      "comprehend:ListDominantLanguageDetectionJobs"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "S3:GetObject",
      "S3:GetObjectVersion"
    ]
    effect = "Allow"
    resources = [
      "${aws_s3_bucket.main.arn}/${aws_s3_object.document.key}*"
    ]
  }

  statement {
    actions = [
      "S3:PutObject"
    ]
    effect = "Allow"
    resources = [
      "${aws_s3_bucket.main.arn}/${aws_s3_object.detect_dominant_language.key}*"
    ]
  }
}

data "aws_iam_policy_document" "sfn_state_machine_comprehend_detect_entities" {
  statement {
    actions = [
      "comprehend:DetectEntities",
      "comprehend:ListEntitiesDetectionJobs"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "s3:PutObject"
    ]
    condition {
      test = "StringLike"
      values = [
        aws_s3_object.detect_entities.key
      ]
      variable = "s3:prefix"
    }
    effect = "Allow"
    resources = [
      aws_s3_bucket.main.arn
    ]
  }
}

data "aws_iam_policy_document" "sfn_state_machine_comprehend_detect_key_phrases" {
  statement {
    actions = [
      "comprehend:DetectKeyPhrases",
      "comprehend:ListKeyPhrasesDetectionJobs"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "s3:PutObject"
    ]
    condition {
      test = "StringLike"
      values = [
        aws_s3_object.detect_key_phrases.key
      ]
      variable = "s3:prefix"
    }
    effect = "Allow"
    resources = [
      aws_s3_bucket.main.arn
    ]
  }
}

data "aws_iam_policy_document" "sfn_state_machine_comprehend_detect_pii_entities" {
  statement {
    actions = [
      "comprehend:DetectPiiEntities",
      "comprehend:ListPiiEntitiesDetectionJobs"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "s3:PutObject"
    ]
    condition {
      test = "StringLike"
      values = [
        aws_s3_object.detect_pii_entities.key
      ]
      variable = "s3:prefix"
    }
    effect = "Allow"
    resources = [
      aws_s3_bucket.main.arn
    ]
  }
}

data "aws_iam_policy_document" "sfn_state_machine_comprehend_detect_sentiment" {
  statement {
    actions = [
      "comprehend:DetectSentiment",
      "comprehend:ListSentimentDetectionJobs"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "s3:PutObject"
    ]
    condition {
      test = "StringLike"
      values = [
        aws_s3_object.detect_sentiment.key
      ]
      variable = "s3:prefix"
    }
    effect = "Allow"
    resources = [
      aws_s3_bucket.main.arn
    ]
  }
}

data "aws_iam_policy_document" "sfn_state_machine_comprehend_detect_syntax" {
  statement {
    actions = [
      "comprehend:DetectSyntax",
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "s3:PutObject"
    ]
    condition {
      test = "StringLike"
      values = [
        aws_s3_object.detect_syntax.key
      ]
      variable = "s3:prefix"
    }
    effect = "Allow"
    resources = [
      aws_s3_bucket.main.arn
    ]
  }
}

data "aws_iam_policy_document" "sfn_state_machine_comprehend_detect_targeted_sentiment" {
  statement {
    actions = [
      "comprehend:DetectTargetedSentiment",
      "comprehend:ListTargetedSentimentDetectionJobs"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "s3:PutObject"
    ]
    condition {
      test = "StringLike"
      values = [
        aws_s3_object.detect_targeted_sentiment.key
      ]
      variable = "s3:prefix"
    }
    effect = "Allow"
    resources = [
      aws_s3_bucket.main.arn
    ]
  }
}

data "aws_iam_policy_document" "sfn_state_machine_comprehend_detect_toxic_content" {
  statement {
    actions = [
      "comprehend:DetectToxicContent",
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "s3:PutObject"
    ]
    condition {
      test = "StringLike"
      values = [
        aws_s3_object.detect_toxic_content.key
      ]
      variable = "s3:prefix"
    }
    effect = "Allow"
    resources = [
      aws_s3_bucket.main.arn
    ]
  }
}
