module "rg" {
  source   = "../child/rg"
  rg_name  = var.rg_name
  location = var.location
}

module "storageaccount" {
  source   = "../child/storage"
  sa_name  = var.sa_name
  rg_name  = module.rg.rg_name
  location = var.location
}

module "vnet" {
  source        = "../child/vnet"
  vnet_name     = var.vnet_name
  rg_name       = module.rg.rg_name
  location      = var.location
  address_space = var.vnet_address_space
}

module "subnet" {
  source         = "../child/subnet"
  subnet_name    = var.subnet_name
  rg_name        = module.rg.rg_name
  vnet_name      = module.vnet.vnet_name
  address_prefix = var.subnet_prefix
}

module "nsg" {
  source   = "../child/nsg"
  nsg_name = var.nsg_name
  rg_name  = module.rg.rg_name
  location = var.location
}

module "nic" {
  source    = "../child/nic"
  nic_name  = var.nic_name
  rg_name   = module.rg.rg_name
  location  = var.location
  subnet_id = module.subnet.subnet_id
  nsg_id    = module.nsg.nsg_id
}

module "vm" {
  source         = "../child/vm"
  vm_name        = var.vm_name
  rg_name        = module.rg.rg_name
  location       = var.location
  nic_id         = module.nic.nic_id
  admin_username = var.admin_username
  admin_password = var.admin_password
}
