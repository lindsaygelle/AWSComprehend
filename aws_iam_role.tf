resource "aws_iam_role" "example" {
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = { Service = "pipes.amazonaws.com" }
        Action    = "sts:AssumeRole"
      },
    ]
  })
}

resource "aws_iam_role" "pipes_pipe_s3_object_created_detect_dominant_language" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_pipes_pipe_s3_object_created_detect_dominant_language.json
  name               = "pipes-pipe-s3-object-created-detect_dominant_language"
  path               = "/${local.organization}/"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_iam_role" "pipes_pipe_s3_object_created_detect_entities" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_pipes_pipe_s3_object_created_detect_entities.json
  name               = "pipes-pipe-s3-object-created-detect_entities"
  path               = "/${local.organization}/"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_iam_role" "pipes_pipe_s3_object_created_detect_key_phrases" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_pipes_pipe_s3_object_created_detect_key_phrases.json
  name               = "pipes-pipe-s3-object-created-detect_key_phrases"
  path               = "/${local.organization}/"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_iam_role" "pipes_pipe_s3_object_created_detect_pii_entities" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_pipes_pipe_s3_object_created_detect_pii_entities.json
  name               = "pipes-pipe-s3-object-created-detect_pii_entities"
  path               = "/${local.organization}/"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_iam_role" "pipes_pipe_s3_object_created_detect_sentiment" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_pipes_pipe_s3_object_created_detect_sentiment.json
  name               = "pipes-pipe-s3-object-created-detect_sentiment"
  path               = "/${local.organization}/"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_iam_role" "pipes_pipe_s3_object_created_detect_syntax" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_pipes_pipe_s3_object_created_detect_syntax.json
  name               = "pipes-pipe-s3-object-created-detect_syntax"
  path               = "/${local.organization}/"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_iam_role" "pipes_pipe_s3_object_created_detect_targeted_sentiment" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_pipes_pipe_s3_object_created_detect_targeted_sentiment.json
  name               = "pipes-pipe-s3-object-created-detect_targeted_sentiment"
  path               = "/${local.organization}/"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_iam_role" "pipes_pipe_s3_object_created_detect_toxic_content" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_pipes_pipe_s3_object_created_detect_toxic_content.json
  name               = "pipes-pipe-s3-object-created-detect_toxic_content"
  path               = "/${local.organization}/"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}

resource "aws_iam_role" "pipes_pipe_s3_object_created_text" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_pipes_pipe_s3_object_created_text.json
  name               = "pipes-pipe-s3-object-created-text"
  path               = "/${local.organization}/"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}
