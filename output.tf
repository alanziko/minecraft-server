output "instance_ip_addr" {
  value       = hcloud_server.minecraft.ipv4_address
  description = "IP Address of Minecraft server"
}

output "storage_box_user" {
  value = hcloud_storage_box.primary_backup.username
  description = "User for accessing Storage Box"
}

output "storage_box_password" {
  value       = random_password.storage_password.result
  sensitive   = true
  description = "Password for accessing Storage Box"
}

output "storage_box_hostname" {
   value = "${hcloud_storage_box.primary_backup.username}.your-storagebox.de"
   description = "Hostname for Storage Box"
}

output "grafana_password" {
  value       = random_password.grafana_password.result
  sensitive   = true
  description = "Password for accessing Grafana admin panel"
}
