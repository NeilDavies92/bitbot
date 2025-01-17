globals {
    tags = {
        environment = "test"
        managed_by = "terraform"
    }
}

generate_hcl "global.auto.tfvars" {
    content {
        tags = globals.tags
    }
}