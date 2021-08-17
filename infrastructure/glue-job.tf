resource "aws_glue_job" "etl" {
  name     = "EducalakeETL"
  role_arn = aws_iam_role.glue_role.arn

  command {
    script_location = "s3://${aws_s3_bucket.codes.bucket}/etl.py"
  }
}