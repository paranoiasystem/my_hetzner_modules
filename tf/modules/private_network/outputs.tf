output "network_id" {
    description = "The ID of the network"
    value = hcloud_network.private_network.id
}