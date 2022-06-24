variable "vm_rg_group_location" {
  type        = string
  description = "VM Name"
  default     = ""
}

variable "vm_rg_group_name" {
  type        = string
  description = "VM Name"
  default     = ""
}

variable "vm_name" {
  type        = string
  description = "VM Name"
  default     = ""
}

variable "admin_username" {
  type        = string
  description = "admin admin_username"
  default     = ""
}

variable "admin_password" {
  type        = string
  description = "admin_password"
  default     = ""
}

variable "publisher" {
  type        = string
  description = "publisher"
  default     = ""
}

variable "offer" {
  type        = string
  description = "offer"
  default     = ""
}

variable "sku" {
  type        = string
  description = "sku"
  default     = ""
}
/*
variable "subnet_id" {
  type        = string
  description = "subnet_id"
  default     = ""
}
*/
##

variable "network_name" {
  type        = string
  description = "network_name"
  default     = ""
}

variable "subnet_name" {
  type        = string
  description = "subnet_name"
  default     = ""
}

variable "nic_name" {
  type        = string
  description = "nic_name"
  default     = ""
}

variable "address_space" {
  type        = string
  description = "address_space"
  default     = "10.0.0.0/16"
}

variable "address_prefixes" {
  type        = string
  description = "address_prefixes"
  default     = "10.0.2.0/24"
}

variable "public_ip_name" {
  type        = string
  description = "public_ip_name"
  default     = ""
}

variable "domain_name" {
  type        = string
  description = "domain_name"
  default     = "exxon.westeurope.cloudapp.azure.com"
}
