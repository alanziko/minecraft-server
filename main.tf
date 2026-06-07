resource "hcloud_server" "primary_node" {
  name        = "primary_node"
  image       = "ubuntu-24.04"
  server_type = "cpx11"
  location    = "fsn1"

  public_net {
    ipv4_enabled = true
    ipv4         = hcloud_primary_ip.primary_ip.id
    ipv6_enabled = false
  }

  firewall_ids = [hcloud_firewall.primary_firewall.id]
}

resource "hcloud_primary_ip" "primary_ip" {
  name          = "primary_ip"
  location      = "fsn1"
  type          = "ipv4"
  auto_delete   = false
}
