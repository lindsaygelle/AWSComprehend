resource "aws_sfn_state_machine" "comprehend_detect_dominant_language" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-dominant-language"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_dominant_language.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_entities" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-entities"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_entities.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_key_phrases" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-key-phrases"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_key_phrases.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_pii_entities" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-pii-entities"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_pii_entities.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_sentiment" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-sentiment"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_sentiment.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_syntax" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-syntax"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_syntax.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_targeted_sentiment" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-targeted_sentiment"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_targeted_sentiment.arn
}

resource "aws_sfn_state_machine" "comprehend_detect_toxic_content" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-comprehend-detect-toxic-content"
  role_arn = aws_iam_role.sfn_state_machine_comprehend_detect_toxic_content.arn
}

resource "aws_sfn_state_machine" "s3_object_created_text" {
  definition = jsonencode({
    StartAt = "ProcessEvent"
    States = {
      "ProcessEvent" = {
        End  = true
        Type = "Pass"
      }
    }
  })
  name     = "${local.organization}-s3-object-created-text"
  role_arn = aws_iam_role.sfn_state_machine_s3_object_created_text.arn
}
