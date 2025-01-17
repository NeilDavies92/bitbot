stack {
  name        = "api-gateway"
  description = "api-gateway"
  id          = "3890bd97-9eec-48b5-b1c5-4c24f9ec9fe1"
}

generate_hcl "api-gateway.tf" {
  content {
    resource "aws_api_gateway_rest_api" "api" {
      name = "${globals.common_variables.prefix}"
    }
  }
}

output "api_id" {
  backend = "terraform"
  value   = aws_api_gateway_rest_api.api.id
}
