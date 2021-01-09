variable authorized_keys {
  type        = list(string)
  description = "SSH public keys to use on the instance"
}

variable domainId {
  type        = string
  description = "domain id for the lenode dns zone"
  default     = null
}

variable "image" {
  description = "Instance type"
  type        = string
  default     = "linode/debian10"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "g6-nanode-1"
}

variable name {
  type        = string
  description = "Name of the instance"
}

variable "region" {
  description = "Region"
  type        = string
  default     = "us-east"
}

variable "root_password" {
  description = "Root password for the instance"
  type        = string
  default     = null
}
