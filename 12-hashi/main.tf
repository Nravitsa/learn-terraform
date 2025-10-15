

data "vault_generic_secret" "secret" {
  path = "demo/ssh"
}

variable "token" {}



provider "vault" {
  address        = "http://vault.tusharbytes.com/"
  token = var.token
}


