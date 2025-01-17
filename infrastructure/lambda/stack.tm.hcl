stack {
  name        = "lambda"
  description = "lambda"
  id          = "5316c6d5-4c57-47ae-a873-1a8f28fd09f3"
}

generate_hcl "lambda.tf" {
  content {
    resource "aws_lambda_function" "lambda" {
      function_name    = "${globals.common_variables.prefix}-lambda"
      binary_filename  = "../app/src/lambda_function.py"
      role             = "arn:aws:iam::123456789012:role/service-role/lambda-role"
      function_handler = "lambda_function.lambda_handler"
      runtime          = "python3.11"
      filename         = "lambda_function.py"
    }
  }
}

# Input Variables
input "api_gateway_id" {
  backend       = "terraform"
  value         = output.api_id.value
  from_stack_id = "3890bd97-9eec-48b5-b1c5-4c24f9ec9fe1"
}

# Output Variables
output "lambda_arn" {
  backend = "terraform"
  value   = aws_lambda_function.lambda.arn
}
