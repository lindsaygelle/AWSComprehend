data "aws_iam_policy_document" "s3_object_created_detect_dominant_language_policy" {
  statement {
    actions = ["sqs:SendMessage"]
    condition {
      test     = "StringLike"
      variable = "aws:SourceArn"
      values   = ["${aws_s3_bucket.main.arn}/${aws_s3_object.detect_dominant_language.key}*"]
    }
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [aws_sqs_queue.s3_object_created_detect_dominant_language.arn]
  }
}

data "aws_iam_policy_document" "s3_object_created_detect_entities_policy" {
  statement {
    actions = ["sqs:SendMessage"]
    condition {
      test     = "StringLike"
      variable = "aws:SourceArn"
      values   = ["${aws_s3_bucket.main.arn}/${aws_s3_object.detect_entities.key}*"]
    }
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [aws_sqs_queue.s3_object_created_detect_entities.arn]
  }
}

data "aws_iam_policy_document" "s3_object_created_detect_key_phrases_policy" {
  statement {
    actions = ["sqs:SendMessage"]
    condition {
      test     = "StringLike"
      variable = "aws:SourceArn"
      values   = ["${aws_s3_bucket.main.arn}/${aws_s3_object.detect_key_phrases.key}*"]
    }
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [aws_sqs_queue.s3_object_created_detect_key_phrases.arn]
  }
}

data "aws_iam_policy_document" "s3_object_created_detect_pii_entities_policy" {
  statement {
    actions = ["sqs:SendMessage"]
    condition {
      test     = "StringLike"
      variable = "aws:SourceArn"
      values   = ["${aws_s3_bucket.main.arn}/${aws_s3_object.detect_pii_entities.key}*"]
    }
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [aws_sqs_queue.s3_object_created_detect_pii_entities.arn]
  }
}

data "aws_iam_policy_document" "s3_object_created_detect_sentiment_policy" {
  statement {
    actions = ["sqs:SendMessage"]
    condition {
      test     = "StringLike"
      variable = "aws:SourceArn"
      values   = ["${aws_s3_bucket.main.arn}/${aws_s3_object.detect_sentiment.key}*"]
    }
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [aws_sqs_queue.s3_object_created_detect_sentiment.arn]
  }
}

data "aws_iam_policy_document" "s3_object_created_detect_syntax_policy" {
  statement {
    actions = ["sqs:SendMessage"]
    condition {
      test     = "StringLike"
      variable = "aws:SourceArn"
      values   = ["${aws_s3_bucket.main.arn}/${aws_s3_object.detect_syntax.key}*"]
    }
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [aws_sqs_queue.s3_object_created_detect_syntax.arn]
  }
}

data "aws_iam_policy_document" "s3_object_created_detect_targeted_sentiment_policy" {
  statement {
    actions = ["sqs:SendMessage"]
    condition {
      test     = "StringLike"
      variable = "aws:SourceArn"
      values   = ["${aws_s3_bucket.main.arn}/${aws_s3_object.detect_targeted_sentiment.key}*"]
    }
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [aws_sqs_queue.s3_object_created_detect_targeted_sentiment.arn]
  }
}

data "aws_iam_policy_document" "s3_object_created_detect_toxic_content_policy" {
  statement {
    actions = ["sqs:SendMessage"]
    condition {
      test     = "StringLike"
      variable = "aws:SourceArn"
      values   = ["${aws_s3_bucket.main.arn}/${aws_s3_object.detect_toxic_content.key}*"]
    }
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [aws_sqs_queue.s3_object_created_detect_toxic_content.arn]
  }
}

data "aws_iam_policy_document" "s3_object_created_text_policy" {
  statement {
    actions = ["sqs:SendMessage"]
    condition {
      test     = "StringLike"
      variable = "aws:SourceArn"
      values   = ["${aws_s3_bucket.main.arn}/${aws_s3_object.text.key}*"]
    }
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }
    resources = [aws_sqs_queue.s3_object_created_text.arn]
  }
}
