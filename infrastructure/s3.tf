resource "aws_s3_bucket" "raw" {
  bucket = "educalake-raw"
  acl    = "private"
}

resource "aws_s3_bucket" "staging" {
  bucket = "educalake-staging"
  acl    = "private"
}

resource "aws_s3_bucket" "codes" {
  bucket = "educalake-codes"
  acl    = "private"
}