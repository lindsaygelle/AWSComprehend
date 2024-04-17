resource "aws_s3_bucket" "main" {
  bucket = lower("${data.aws_caller_identity.main.account_id}-${var.organization}")
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = var.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}
