
locals {
  server-ip        = hcloud_server.primary_node.ipv4_address
  storage-hostname = "${hcloud_storage_box.primary_backup.username}.${hcloud_storage_box.primary_backup.location}.storagebox.de"

  inventory = templatefile("${path.module}/ansible/inventory.tpl", {
    server-ip        = local.server-ip
    storage-hostname = local.storage-hostname
  })
}

resource "local_file" "inventory" {
  content  = local.inventory
  filename = "${path.module}/ansible/inventory.ini"
}
