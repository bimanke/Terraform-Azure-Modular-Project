variable "rg_name" {}
variable "location" {}
variable "sa_name" {}
variable "vnet_name" {}
variable "vnet_address_space" {
  type = list(string)
}
variable "subnet_name" {}
variable "subnet_prefix" {}
variable "nsg_name" {}
variable "nic_name" {}
variable "vm_name" {}
variable "admin_username" {}
variable "admin_password" {}
