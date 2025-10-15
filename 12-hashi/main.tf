
data "vault_generic_secret" "secret" {
  path = "demo/ssh"
}

variable "token" {}



provider "vault" {
  address        = "http://vault.tusharbytes.com:8200/"
  token = var.token
}

resource "local_file" "foo" {
  content = jsonencode(data.vault_generic_secret.secret.data)
  filename = "/tmp/vault"
}


resource "local_file" "foo1" {
  content = data.vault_generic_secret.secret.data["password"]
  filename = "/tmp/vault-pass"
}
