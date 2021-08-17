resource "aws_glue_job" "etl_job" {
  name     = "EducalakeETL"
  role_arn = aws_iam_role.glue_role.arn

  command {
    script_location = "s3://${aws_s3_bucket.codes.bucket}/etl.py"
  }
}

resource "aws_glue_trigger" "etl_trigger" {
  name = "EducalakeTrigger"
  type = "ON_DEMAND"

  actions {
    job_name = aws_glue_job.etl_job.name
  }
}