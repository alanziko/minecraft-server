variable "hcloud_token" {
  sensitive = true
}

variable "ssh_keys_path" {
  default = "keys"
}

variable "location" {
  type = string
  default = "fsn1"
}

variable "server_type" {
  default = "ccx13"
}
