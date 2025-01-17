globals {
  aws = {
    source  = "hashicorp/aws"
    version = "=<5, >6"
  }
}

generate_hcl "providers.tf" {
  content {
    terraform {
      required_providers {
        aws = {
          source  = globals.aws.source
          version = globals.aws.version
        }
      }
    }
  }
}