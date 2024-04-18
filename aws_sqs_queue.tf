resource "aws_sqs_queue" "s3_object_created_detect_dominant_language" {
  name                      = "${local.organization}-s3-object-created-detect-dominant-language"
  message_retention_seconds = 86400
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    bucket       = aws_s3_bucket.main.id
    bucket_key   = aws_s3_object.detect_dominant_language.key
    comprehend   = "detect_dominant_language"
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_sqs_queue" "s3_object_created_detect_entities" {
  name                      = "${local.organization}-s3-object-created-detect-entities"
  message_retention_seconds = 86400
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    bucket       = aws_s3_bucket.main.id
    bucket_key   = aws_s3_object.detect_entities.key
    comprehend   = "detect_entities"
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_sqs_queue" "s3_object_created_detect_key_phrases" {
  name                      = "${local.organization}-s3-object-created-detect-key-phrases"
  message_retention_seconds = 86400
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    bucket       = aws_s3_bucket.main.id
    bucket_key   = aws_s3_object.detect_key_phrases.key
    comprehend   = "detect_key_phrases"
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_sqs_queue" "s3_object_created_detect_pii_entities" {
  name                      = "${local.organization}-s3-object-created-detect-pii-entities"
  message_retention_seconds = 86400
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    bucket       = aws_s3_bucket.main.id
    bucket_key   = aws_s3_object.detect_sentiment.key
    comprehend   = "detect_pii_entities"
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_sqs_queue" "s3_object_created_detect_sentiment" {
  name                      = "${local.organization}-s3-object-created-detect-sentiment"
  message_retention_seconds = 86400
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    bucket       = aws_s3_bucket.main.id
    bucket_key   = aws_s3_object.detect_sentiment.key
    comprehend   = "detect_sentiment"
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_sqs_queue" "s3_object_created_detect_syntax" {
  name                      = "${local.organization}-s3-object-created-detect-syntax"
  message_retention_seconds = 86400
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    bucket       = aws_s3_bucket.main.id
    bucket_key   = aws_s3_object.detect_syntax.key
    comprehend   = "detect_syntax"
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_sqs_queue" "s3_object_created_detect_targeted_sentiment" {
  name                      = "${local.organization}-s3-object-created-targeted-sentiment"
  message_retention_seconds = 86400
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    bucket       = aws_s3_bucket.main.id
    bucket_key   = aws_s3_object.detect_targeted_sentiment.key
    comprehend   = "detect_targeted_sentiment"
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_sqs_queue" "s3_object_created_detect_toxic_content" {
  name                      = "${local.organization}-s3-object-created-toxic-content"
  message_retention_seconds = 86400
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    bucket       = aws_s3_bucket.main.id
    bucket_key   = aws_s3_object.detect_toxic_content.key
    comprehend   = "detect_toxic_content"
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_sqs_queue" "s3_object_created_text" {
  name                      = "${local.organization}-s3-object-created-text"
  message_retention_seconds = 86400
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    bucket       = aws_s3_bucket.main.id
    bucket_key   = aws_s3_object.text.key
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}
