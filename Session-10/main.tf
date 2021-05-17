module "s3_module" {
    # remote module
    source = "github.com/maximbek9999/TerraformApril/modules/s3"
    # variables in module
    
    env = "dev"  
}

module "s3_module_california" {
    # remote module
    source = "github.com/maximbek9999/TerraformApril/modules/s3"
    # variables in module
    
    env = "qa"  
    providers = {
        aws = aws.california
    }
}

output "s3_name" {
    value = module.s3_module.s3_name
}

output "s3_name_california" {
    value = module.s3_module_california.s3_name
}