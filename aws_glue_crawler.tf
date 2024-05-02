resource "aws_glue_crawler" "datalake" {
  database_name = aws_glue_catalog_database.datalake.name
  name          = aws_glue_catalog_database.datalake.name
  role          = aws_iam_role.glue_crawler_datalake.arn

  s3_target {
    path = "s3://${aws_s3_bucket.main.id}/${aws_s3_object.datalake.key}"
  }
}
