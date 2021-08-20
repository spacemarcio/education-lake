resource "aws_athena_database" "athena" {
  name   = "staging_db"
  bucket = aws_s3_bucket.queries.bucket
}