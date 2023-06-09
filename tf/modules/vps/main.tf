resource "random_uuid" "uuid" {
}

resource "hcloud_server" "vps" {
  name        = (var.vps_name != "") ? var.vps_name : "vps-${random_uuid.uuid.result}"
  image       = var.vps_image
  server_type = var.vps_server_type


  ssh_keys = length(var.vps_ssh_keys) > 0 ? var.vps_ssh_keys : []

  dynamic "network" {
    for_each = (var.vps_network.id != "" && var.vps_network.ip != "") ? [1] : []
    content {
      network_id = var.vps_network.id
      ip         = var.vps_network.ip
    }
  }

}
