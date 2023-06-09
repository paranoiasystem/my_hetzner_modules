variable "vps_name" {
  type        = string
  description = "The name of the vps"
  default     = ""
}

variable "vps_image" {
  type        = string
  description = "The image of the vps"
  default     = "debian-11"
}

variable "vps_server_type" {
  type        = string
  description = "The server type of the vps"
  default     = "cx11"
}

variable "vps_ssh_keys" {
  type        = list(string)
  description = "The ssh keys of the vps"
  default     = []
}

variable "vps_network" {
  type = object({
    id = string
    ip = string
  })
  description = "The network of the vps"
  default = {
    id = ""
    ip = ""
  }
}
