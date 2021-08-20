resource "aws_athena_workgroup" "users" {
  name = "dev"

  configuration {

    result_configuration {
      output_location = "s3://${aws_s3_bucket.queries.bucket}/output/"
    }
  }
}