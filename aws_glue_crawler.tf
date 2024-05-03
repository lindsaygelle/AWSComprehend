resource "aws_glue_crawler" "datalake" {
  database_name = aws_glue_catalog_database.datalake.name
  name          = aws_glue_catalog_database.datalake.name
  role          = aws_iam_role.glue_crawler_datalake.arn

  s3_target {
    path = "s3://${aws_s3_bucket.main.id}/${aws_s3_object.datalake.key}"
  }
  tags = {
    account_arn    = data.aws_caller_identity.main.arn
    account_id     = data.aws_caller_identity.main.account_id
    organization   = local.organization
    region         = data.aws_region.main.name
    s3_bucket      = aws_s3_bucket.main.name
    s3_target_path = "s3://${aws_s3_bucket.main.id}/${aws_s3_object.datalake.key}"
    workspace      = terraform.workspace
  }
}
