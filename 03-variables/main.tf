variable "x" {
  default =  10
}

output "x" {
  value = var.x
}


variable "num" {
  default =  100
}

variable "string" {
  default =  "HELLO"
}


variable "boolean" {
  default =  true
}

output "string" {
  value = "${var.string}, is a string"
}





# normal, LIST, MAP/ DICT

variable "normal" {
  default =  true
}


variable "list" {
  default =  [
    "d",
    1,
    3,
    false
  ]
}


variable "map" {
  default = {
    x    = 10
    y    = "Why"
    ooga = true
  }
}

output "list" {
  value = var.list[0]
}

output "map" {
  value = var.map["y"]
}


#CLI variable


variable "cli" {}

output "command-line-variable" {
  value = "var.cli"
}

variable "v" {}

output "var-form-tfvars" {
  value = var.v

}



variable "env" {}

output "var-form-devvars" {
  value = var.env

}




variable "server_count" {}

output "erver_count" {
  value = var.server_count

}
