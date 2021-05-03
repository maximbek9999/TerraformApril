output "alb_dns" {
    value = aws_lb.webserver_alb.dns_name
}

output "rds_db_name" {
    value = data.terraform_remote_state.rds.outputs.rds_db_name
}


output "rds_db_username" {
    value = data.terraform_remote_state.rds.outputs.rds_db_username
}
  
output "rds_db_endpoint" {
    value = data.terraform_remote_state.rds.outputs.rds_db_endpoint
}

output "rds_password" {
  value = data.terraform_remote_state.password.outputs.rds_password
}

output "rds_sg_id" {
    value = data.terraform_remote_state.rds_sg.outputs.rds_sg_id
}

