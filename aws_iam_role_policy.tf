resource "aws_iam_role_policy" "pipes_pipe_s3_object_created_detect_dominant_language" {
  policy = data.aws_iam_policy_document.pipes_pipe_s3_object_created_detect_dominant_language.json
  role   = aws_iam_role.pipes_pipe_s3_object_created_detect_dominant_language.id
}

resource "aws_iam_role_policy" "pipes_pipe_s3_object_created_detect_entities" {
  policy = data.aws_iam_policy_document.pipes_pipe_s3_object_created_detect_entities.json
  role   = aws_iam_role.pipes_pipe_s3_object_created_detect_entities.id
}

resource "aws_iam_role_policy" "pipes_pipe_s3_object_created_detect_key_phrases" {
  policy = data.aws_iam_policy_document.pipes_pipe_s3_object_created_detect_key_phrases.json
  role   = aws_iam_role.pipes_pipe_s3_object_created_detect_key_phrases.id
}

resource "aws_iam_role_policy" "pipes_pipe_s3_object_created_detect_pii_entities" {
  policy = data.aws_iam_policy_document.pipes_pipe_s3_object_created_detect_pii_entities.json
  role   = aws_iam_role.pipes_pipe_s3_object_created_detect_pii_entities.id
}

resource "aws_iam_role_policy" "pipes_pipe_s3_object_created_detect_sentiment" {
  policy = data.aws_iam_policy_document.pipes_pipe_s3_object_created_detect_sentiment.json
  role   = aws_iam_role.pipes_pipe_s3_object_created_detect_sentiment.id
}

resource "aws_iam_role_policy" "pipes_pipe_s3_object_created_detect_syntax" {
  policy = data.aws_iam_policy_document.pipes_pipe_s3_object_created_detect_syntax.json
  role   = aws_iam_role.pipes_pipe_s3_object_created_detect_syntax.id
}

resource "aws_iam_role_policy" "pipes_pipe_s3_object_created_detect_targeted_sentiment" {
  policy = data.aws_iam_policy_document.pipes_pipe_s3_object_created_detect_targeted_sentiment.json
  role   = aws_iam_role.pipes_pipe_s3_object_created_detect_targeted_sentiment.id
}

resource "aws_iam_role_policy" "pipes_pipe_s3_object_created_detect_toxic_content" {
  policy = data.aws_iam_policy_document.pipes_pipe_s3_object_created_detect_toxic_content.json
  role   = aws_iam_role.pipes_pipe_s3_object_created_detect_toxic_content.id
}

resource "aws_iam_role_policy" "pipes_pipe_s3_object_created_text" {
  policy = data.aws_iam_policy_document.pipes_pipe_s3_object_created_text.json
  role   = aws_iam_role.pipes_pipe_s3_object_created_text.id
}

resource "aws_iam_role_policy" "sfn_state_machine_s3_object_created_text" {
  policy = data.aws_iam_policy_document.sfn_state_machine_s3_object_created_text.json
  role   = aws_iam_role.sfn_state_machine_s3_object_created_text.id
}
