variable "hcloud_token" {
  type        = string
  description = "The Hetzner Cloud API token"
  default     = ""
}

# variable "location" {
#   type=string
#   description = "The location of the server"
#   default = "nbg1"
# }

# variable "private_network_ip_range" {
#   type=string
#   description = "The private IP range for the network"
#   default = "10.0.0.0/16"
# }

# variable "private_network_name" {
#   type=string
#   description = "The name of the network"
#   default = "private"
# }

# variable "private_subnet_ip_range" {
#   type=string
#   description = "The private IP range for the subnet"
#   default = "10.0.1.0/24"
# }