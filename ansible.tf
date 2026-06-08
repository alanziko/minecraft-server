locals {
  server-ip = hcloud_server.minecraft.ipv4_address
}

resource "local_file" "inventory" {
  content = templatefile("ansible/inventory.tpl", {
    server-ip = local.server-ip
  })
  filename = "${path.module}/ansible/inventory.ini"
}
