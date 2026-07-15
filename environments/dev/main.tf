terraform {
  required_version = ">= 1.6.0"
}

variable "environment" {
  type    = string
  default = "dev"
}

resource "terraform_data" "guestbook_environment" {
  input = {
    environment = var.environment
    namespace   = "guestbook-dev"
  }
}

output "environment" {
  value = terraform_data.guestbook_environment.output.environment
}

output "namespace" {
  value = terraform_data.guestbook_environment.output.namespace
}
