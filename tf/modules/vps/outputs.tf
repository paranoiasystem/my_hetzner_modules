output "vps_ip" {
  description = "The IP of the vps"
  value       = hcloud_server.vps.ipv4_address
}