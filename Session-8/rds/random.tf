resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@" # you specify any charachters you want to be used
} 