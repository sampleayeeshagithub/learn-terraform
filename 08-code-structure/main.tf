resource "null_resource" "test" {
  provisioner "local-exec" {
     command = "echo Hello World - ${var.env} environment"
  }
}

variable "env" {}

terraform {
  backend "s3" {}
}