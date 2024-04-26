resource "aws_sfn_state_machine" "s3_object_created_text" {
  definition = templatefile("./state_machine/S3ObjectCreatedText.json", {
    aws_s3_object_key = aws_s3_object.comprehend.key
  })
  name     = "${local.organization}-s3-object-created-text"
  role_arn = aws_iam_role.sfn_state_machine_s3_object_created_text.arn
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}
