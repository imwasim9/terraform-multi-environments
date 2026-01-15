locals{
    environment = lookup(var.environment, terraform.workspace)
    common_name = "${var.project}-${local.environment}"
    common_tags = {
        Project = var.project
        Terraform = true
    }
}
