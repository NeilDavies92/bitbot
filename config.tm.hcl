terramate {
  config {
    experiments = ["outputs-sharing"]
  }
}

sharing_backend "terraform" {
  type     = terraform
  command  = ["terraform", "output", "-json"]
  filename = "shared.tf"
}
