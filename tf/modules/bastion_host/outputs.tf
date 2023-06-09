output "private_bastion_host_ssh_private_key" {
  description = "The private SSH key of the bastion host"
  value       = module.ssh_key.private_key
  sensitive   = true
}

output "bastion_ip" {
  description = "The IP of the bastion host"
  value       = hcloud_server.bastion_host.ipv4_address
}