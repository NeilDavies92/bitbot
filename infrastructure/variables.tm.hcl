globals {
  common_variables = {
    prefix = "bitbot"
  }

  tags = {
    service     = "bitbot"
    environment = "test"
    managed_by  = "terraform"
  }
}

generate_hcl "global.auto.tfvars" {
  content {
    tags = globals.tags
  }
}