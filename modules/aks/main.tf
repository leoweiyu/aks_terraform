resource "azurerm_kubernetes_cluster" "main" {
  resource_group_name = var.resource_group_name
  location = var.aks_cluster_location
  name = var.aks_cluster_name
  kubernetes_version = var.aks_cluster_version
  dns_prefix = var.dns_prefix

  service_principal {
    client_id = "88FUCKFUCKFUCKFUCKFUCKFUCKFUCKf4"
    client_secret = "FUCKFUCKFUCKFUCKFUCKFUCKFUCK_z"
  }

  default_node_pool {
    name = "leoakspool"
    node_count = var.aks_node_number
    vm_size = "Standard_D2_v2"
    vnet_subnet_id = var.subnet_id
  }
  
  network_profile {
    network_plugin = var.network_plugin
    network_policy = var.network_policy
  }
  
}
