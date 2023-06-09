resource "hcloud_network" "private_network" {
  name = var.private_network_name
  ip_range = var.private_network_ip_range
  labels = {
    name = var.private_network_name
  }
}

resource "hcloud_network_subnet" "private_network_subnet" {
  network_id = hcloud_network.private_network.id
  type = var.private_subnet_type
  ip_range = var.private_subnet_ip_range
  network_zone = var.private_subnet_network_zone
}