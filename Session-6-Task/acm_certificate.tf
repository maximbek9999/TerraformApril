resource "aws_acm_certificate" "webserver_cert" {
  domain_name       = "bestbuyconsulting.com"
  subject_alternative_names = ["www.bestbuyconsulting.com"]
  validation_method = "DNS"

  tags = {
    Name    = "${var.env}-webserver-sg"
    Env     = var.env
    Project = var.project_name
  }

  lifecycle {
    create_before_destroy = true
  }
}