// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "s3" {
    bucket = "bitbot-terraform-state"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}
