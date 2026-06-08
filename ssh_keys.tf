resource "hcloud_ssh_key" "primary_keys" {
  # NOTE: What will happen if the order of files/keys is changed?
  #       bkey, ckey + akey -> bkey, ckey, akey
  for_each = fileset(var.ssh_keys_path, "*.pub")

  name       = "${trimsuffix(each.value, ".pub")}_ssh_key"
  public_key = file("${var.ssh_keys_path}/${each.value}")
}
