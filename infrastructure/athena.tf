resource "aws_s3_bucket" "queries" {
  bucket = "queries"
}

resource "aws_athena_database" "queries" {
  name   = aws_glue_catalog_database.staging_zone.name
  bucket = aws_s3_bucket.queries.bucket
}