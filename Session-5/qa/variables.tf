variable "env" {
  default     = "dev"
  type        = string
  description = "Name of the environment"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "this is an instance type"
}

variable "ingress_ssh_port" {
  type        = number
  default     = "22"
  description = "this is ssh port"
}

variable "ingress_http_port" {
  type        = number
  default     = "80"
  description = "this is http port"
}

variable "sg_cidr_blocks" {
  type        = string
  default     = "0.0.0.0/0"
  description = "this is cidr block for sg"
}

variable "ingress_protocol_type" {
  type        = string
  default     = "tcp"
  description = "this is ingress protoocol type"
}

variable "egress_protocol_type" {
  type        = string
  default     = "-1"
  description = "this is egress protoocol type"
}

variable "egress_port" {
  type        = number
  default     = "0"
  description = "this is egress port"
}