provider "hcloud" {
  token = var.hcloud_token
}

# module "bastion_host" {
#     source = "./modules/bastion_host"
#     private_network_ip_range = var.private_network_ip_range
#     private_network_name = var.private_network_name
# }

module "ssh_key" {
  source       = "./modules/ssh_key"
  ssh_key_name = "test"
}

module "vps" {
  source = "./modules/vps"
  vps_ssh_keys = [
    module.ssh_key.ssh_key_id
  ]
}