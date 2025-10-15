
data "vault_generic_secret" "secret" {
  path = "demo/ssh"
}

variable "token" {}



provider "vault" {
  address        = "http://vault.tusharbytes.com:8200/"
  token = var.token
}

resource "local_file" "foo" {
  filename = data.vault_generic_secret.secret
  content = "/tmp/vault"
}
