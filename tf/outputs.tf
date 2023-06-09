# output "private_bastion_host_ssh_private_key" {
#   description = "The private SSH key of the bastion host"
#   value       = module.bastion_host.private_bastion_host_ssh_private_key
#   sensitive   = true
# }

# output "bastion_ip" {
#   description = "The IP of the bastion host"
#   value       = module.bastion_host.bastion_ip
# }

output "ssh_private_key" {
  description = "The private SSH key of the bastion host"
  value       = module.ssh_key.private_key
  sensitive   = true
}

output "vps_ip" {
  description = "The IP of the vps"
  value       = module.vps.vps_ip
}