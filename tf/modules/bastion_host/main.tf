module "private_network" {
  source                   = "../private_network"
  private_network_ip_range = var.private_network_ip_range
  private_network_name     = var.private_network_name
}

module "ssh_key" {
  source       = "../ssh_key"
  ssh_key_name = var.ssh_key_name
}

resource "hcloud_server" "bastion_host" {
  name        = var.bastion_host_name
  image       = "debian-11"
  server_type = "cx11"

  ssh_keys = [
    module.ssh_key.ssh_key_id
  ]

  network {
    network_id = module.private_network.network_id
    ip         = var.bastion_host_ip
  }
}
