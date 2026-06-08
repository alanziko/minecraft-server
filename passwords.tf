resource "random_password" "storage_password" {
  length = 16

  special          = true
  override_special = "!#$%&_"

  min_lower   = 1
  min_upper   = 1
  min_special = 1
  min_numeric = 1
}

resource "random_password" "grafana_password" {
  length = 16

  special          = true
  override_special = "!#$%&_"

  min_lower   = 1
  min_upper   = 1
  min_special = 1
  min_numeric = 1
}
