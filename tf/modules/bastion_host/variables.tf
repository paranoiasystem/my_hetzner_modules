variable "private_network_ip_range" {
  type=string
  description = "The private IP range for the network"
  default = "10.0.0.0/16"
}

variable "private_network_name" {
  type=string
  description = "The name of the network"
  default = "private"
}

variable "bastion_host_name" {
  type=string
  description = "The name of the bastion host"
  default = "bastion-host"
}

variable "bastion_host_ip" {
  type=string
  description = "The IP address of the bastion host"
  default = "10.0.1.1"
}

variable "ssh_key_name" {
  type=string
  description = "The name of the SSH key"
  default = "bastion_ssh_key"
}