resource "aws_glue_catalog_database" "datalake" {
  name = "${local.organization}-datalake"
}
