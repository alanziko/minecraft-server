variable "hcloud_token" {
  sensitive = true
  description = "API key for Hetzner Cloud team"
}

variable "ssh_keys_path" {
  type = string
  default = "keys"
  description = "Path to SSH pub keys"
}

variable "location" {
  type    = string
  default = "fsn1"
  description = "Server location"
}

variable "server_type" {
  type = string
  default = "ccx13"
  description = "Server variant"
}

variable "storage_type" {
  type = string
  default = "bx11"
  description = "Storage Box variant"
}
