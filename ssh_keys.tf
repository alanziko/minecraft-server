resource "hcloud_ssh_key" "primary_keys" {
  for_each   = fileset(var.ssh_keys_path, "*")
  name       = "${replace(each.value, ".pub", "")}_ssh_key"
  public_key = file("${var.ssh_keys_path}/${each.value}")
}
