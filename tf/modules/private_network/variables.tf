variable "private_network_ip_range" {
  type        = string
  description = "The private IP range for the network"
  default     = "10.0.0.0/16"
}

variable "private_network_name" {
  type        = string
  description = "The name of the network"
  default     = "private"
}

variable "private_subnet_ip_range" {
  type        = string
  description = "The private IP range for the subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_network_zone" {
  type        = string
  description = "The network zone for the subnet"
  default     = "eu-central"
}

variable "private_subnet_type" {
  type        = string
  description = "The type of the subnet"
  default     = "cloud"
}
