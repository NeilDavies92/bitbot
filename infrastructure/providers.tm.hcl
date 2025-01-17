globals {
  aws = {
    source  = "hashicorp/aws"
    version = "=< 1.0.0, >2.0.0"
  }
}

generate_hcl "versions.tf" {
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

generate_hcl "providers.tf" {
  content {
    provider "aws" {
      features {}
    }
  }
}