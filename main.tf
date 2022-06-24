resource "azurerm_resource_group" "vm_rg" {
  name     = var.vm_rg_group_name
  location = var.vm_rg_group_location
}


module "virtual_machine" {
  source                  = "../../../modules/virtualmachine"
  windows_virtual_machine = var.vm_name
  resource_group_name     = azurerm_resource_group.vm_rg.name
  resource_group_location = azurerm_resource_group.vm_rg.location
  admin_username          = var.admin_username
  admin_password          = var.admin_password
  publisher               = var.publisher
  offer                   = var.offer
  sku                     = var.sku
  network_interface_ids   = module.network_interface.nic_id
}


module "vm_network" {
  source                  = "../../../modules/network"
  virtual_network_name    = var.network_name
  resource_group_name     = azurerm_resource_group.vm_rg.name
  resource_group_location = azurerm_resource_group.vm_rg.location
  address_space           = var.address_space
  subnet_name             = var.subnet_name
  address_prefixes        = var.address_prefixes
  network_interface_name  = module.network_interface.nic_name
  #public_ip_address_id = module.pub_ip.public_id
}


module "pub_ip" {
  source               = "../../../modules/publicip"
  public_ip_name          = var.public_ip_name
  resource_group_name  = azurerm_resource_group.vm_rg.name
  resource_group_location =  azurerm_resource_group.vm_rg.location
  domain_name_label    = var.domain_name
}


module "network_interface" {
  source                 = "../../../modules/nic"
  network_interface_name = var.nic_name
  resource_group_name    = azurerm_resource_group.vm_rg.name
  resource_group_location = azurerm_resource_group.vm_rg.location
  subnet_id = module.vm_network.sub_id
  public_ip_address_id = module.pub_ip.public_id
}



