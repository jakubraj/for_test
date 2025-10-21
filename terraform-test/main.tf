terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "hello" {
  content  = "Hello, Kuba, this is Terraform!"
  filename = "${path.module}/hello.txt"
}
