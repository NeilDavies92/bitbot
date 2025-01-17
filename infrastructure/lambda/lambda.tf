// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "aws_lambda_function" "lambda" {
  binary_filename  = "../app/src/lambda_function.py"
  filename         = "lambda_function.py"
  function_handler = "lambda_function.lambda_handler"
  function_name    = "${globals.common_variables.prefix}-lambda"
  role             = "arn:aws:iam::123456789012:role/service-role/lambda-role"
  runtime          = "python3.11"
}
