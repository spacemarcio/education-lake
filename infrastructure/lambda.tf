resource "aws_lambda_function" "crawling_data" {
  filename      = "lambda_deploy.zip"
  function_name = "EducalakeCrawler"
  role          = aws_iam_role.lambda.arn
  handler       = "lambda_function.handler"
  memory_size   = 128
  timeout       = 30

  source_code_hash = filebase64sha256("../lambda/lambda_deploy.zip")

  runtime = "python3.8"
}