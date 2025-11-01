# values for the variables below are defined in my terraform.tfvars file. 
variable "git-name" {
  description = "Github Username"
  type = string
  sensitive = true
}

variable "git-token" {
  description = "Github password/token"
  type = string
  sensitive = true
}

variable "key-name" {
  description = "AWS keyname"
  type = string
  sensitive = true
}

variable "hosted-zone" {
  description = "My Domain name - Hosted Zone"
}