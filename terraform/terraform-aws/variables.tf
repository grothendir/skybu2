variable "access_key" {}

variable "secret_key" {}

variable "region" {
  default = "us-east-1"
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-035be7bafff33b6b6"
    "us-west-2" = "ami-032509850cf9ee54e"
  }
}
