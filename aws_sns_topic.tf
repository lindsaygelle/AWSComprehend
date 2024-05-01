resource "aws_sns_topic" "s3_object_created_text" {
  name = "${local.organization}-s3-object-created-text"
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
