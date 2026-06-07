locals {
  server-ip = hcloud_server.primary_node.ipv4_address

  inventory = templatefile("${path.module}/ansible/inventory.tpl", {
    server-ip = local.server-ip
  })
}

resource "local_file" "inventory" {
  content  = local.inventory
  filename = "${path.module}/ansible/inventory.ini"
}
