
# S3 buckets
resource "aws_s3_bucket" "educalake-code" {
  bucket = "educalake-code"
  acl    = "private"
}

resource "aws_s3_bucket" "educalake-bronze" {
  bucket = "educalake-bronze"
  acl    = "private"
}

resource "aws_s3_bucket" "educalake-silver" {
  bucket = "educalake-silver"
  acl    = "private"
}

resource "aws_s3_bucket" "educalake-gold" {
  bucket = "educalake-gold"
  acl    = "private"
}

# ETL codes
resource "aws_s3_bucket_object" "code_silver" {
  bucket = aws_s3_bucket.educalake-code.id
  key = "bronze_job.py"
  acl = "private"
  source = "../code/bronze_job.py"
  etag = filemd5("../code/bronze_job.py")
}