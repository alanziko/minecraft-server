resource "hcloud_storage_box" "primary_backup" {
  name = "primary_backup"
  storage_box_type = var.storage_type
  location = var.location
  password = "abc"

  access_settings = {
    reachable_externally = true
    ssh_enabled = true
  }
 
  ssh_keys = [for k in hcloud_ssh_key.primary_keys : k.public_key]

  lifecycle {
    ignore_changes = [
      ssh_keys
    ]

    prevent_destroy = true
  }
}
