locals {
    common_tags = {
        env = var.env
        project = "${var.env}-wordpress"
        team = "devops"
        owner = "max"
        timestamp = timestamp()
    }
    unique_tags = {
        unique = "test"
    } 
}

#common 