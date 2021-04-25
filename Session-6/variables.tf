variable "env" {
  type        = string
  default     = "dev"
  description = "Name of the environment"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "asg_name" {
  type = string
  default = "asg"
}