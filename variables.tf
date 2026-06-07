variable "hcloud_token" {
  sensitive = true
}

variable "ssh_keys_path" {
  default = "keys"
}

variable "location" {
  type    = string
  default = "fsn1"
}

variable "server_type" {
  default = "ccx13"
}

variable "storage_type" {
  default = "bx11"
}

variable "storage_password" {
  type      = string
  sensitive = true
}
