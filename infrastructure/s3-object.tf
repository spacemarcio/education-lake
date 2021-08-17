resource "aws_s3_bucket_object" "etl" {
  bucket = aws_s3_bucket.codes.id
  key = "etl.py"
  acl = "private"
  source = "../code/etl.py"
  etag = filemd5("../code/etl.py")
}

resource "aws_s3_bucket_object" "data" {
  bucket = aws_s3_bucket.raw.id
  key = "DATA.csv"
  acl = "private"
  source = "../data/DATA.csv"
  etag = filemd5("../data/DATA.csv")
}