resource "aws_lambda_function" "crawling_data" {
  filename      = "../lambda/lambda_function_payload.zip"
  function_name = "EducalakeCrawler"
  role          = aws_iam_role.lambda.arn
  handler       = "lambda_function.handler"
  memory_size   = 128
  timeout       = 480

  source_code_hash = filebase64sha256("../lambda/lambda_function_payload.zip")

  runtime = "python3.8"
}

data "aws_lambda_invocation" "crawler_invocation" {
  function_name = aws_lambda_function.crawling_data.function_name

  input = <<JSON
{
  "key1": "value1",
  "key2": "value2"
}
JSON
}