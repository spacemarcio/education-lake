resource "aws_s3_bucket_object" "etl" {
  bucket = aws_s3_bucket.codes.id
  key = "etl.py"
  acl = "private"
  source = "../code/etl.py"
  etag = filemd5("../code/etl.py")
}