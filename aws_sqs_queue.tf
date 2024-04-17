resource "aws_sqs_queue" "s3_object_created_text" {
  content_based_deduplication = true
  fifo_queue                  = true
  name                        = "${local.organization}-s3-object-created-text"
  tags = {
    account_arn  = data.aws_caller_identity.main.arn
    account_id   = data.aws_caller_identity.main.account_id
    organization = local.organization
    region       = data.aws_region.main.name
    workspace    = terraform.workspace
  }
}
