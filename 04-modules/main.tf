# just like functions

module "sample1" {
  source = "./sample"
  x= var.x
}



module "sample2" {
  source = "./sample"
  x= var.x
}

variable "x" {
  default = 100
}