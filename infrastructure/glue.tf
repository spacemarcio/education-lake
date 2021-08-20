resource "aws_glue_job" "etl_job" {
  name     = "EducalakeETL"
  role_arn = aws_iam_role.glue_role.arn

  command {
    script_location = "s3://${aws_s3_bucket.codes.bucket}/etl.py"
  }
}

resource "aws_glue_trigger" "etl_trigger" {
  name = "EducalakeTrigger"
  type = "SCHEDULED"
  schedule = "cron(0/15 * * * ? *)"

  actions {
    job_name = aws_glue_job.etl_job.name
  }
}

resource "aws_glue_catalog_database" "staging_zone" {
  name = "staging_db"
}

resource "aws_glue_crawler" "staging_zone" {
  database_name = aws_glue_catalog_database.staging_zone.name
  name          = "staging_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.staging.bucket}"
  }
}

resource "aws_glue_trigger" "crawler_trigger" {
  name = "EducalakeCrawlerTrigger"
  type = "CONDITIONAL"

  actions {
    crawler_name = aws_glue_crawler.staging_zone.name
  }
  
  predicate {
    conditions {
      job_name = aws_glue_job.etl_job.name
      state    = "SUCCEEDED"
    }
}