resource "hcloud_server" "primary_node" {
  name        = "primary"
  image       = "ubuntu-24.04"
  server_type = var.server_type
  location    = var.location

  public_net {
    ipv4_enabled = true
    ipv4         = hcloud_primary_ip.primary_ip.id
    ipv6_enabled = false
  }

  firewall_ids = [hcloud_firewall.primary_firewall.id]
  ssh_keys     = [for k in hcloud_ssh_key.primary_keys : k.id]
}

resource "hcloud_primary_ip" "primary_ip" {
  name        = "primary_ip"
  location    = var.location
  type        = "ipv4"
  auto_delete = false
}
