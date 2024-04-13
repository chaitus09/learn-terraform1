terraform {
  backend "s3" {
    bucket = "ch-jaikeer1"
    key    = "testing/state"
    region = "us-east-1"
  }
}

output "env" {
  value = var.env
}

variable "env" {}