globals {
    tags = {
        service = "bit-bot"
        environment = "test"
        managed_by = "terraform"
    }
}

generate_hcl "global.auto.tfvars" {
    content {
        tags = globals.tags
    }
}