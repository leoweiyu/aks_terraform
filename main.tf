provider "azurerm" {
  version = "=2.0.0"
  features {}
}

data "azurerm_resource_group" "rg" {
  name = "leaonow"
}

data "azurerm_virtual_machine" "vm" {
  name = "vm1"
  resource_group_name = data.azurerm_resource_group.rg.name
}

output "vm_info" {
  value = data.azurerm_virtual_machine.vm
}

module aks {
  source = "./modules/aks"
}

