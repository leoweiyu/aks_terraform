variable "resource_group_name" {
  default = "leaonow"
  description = "the resource group name"
  type = string
}

variable "aks_cluster_name" {
  default = "leoAKS03"
  description = "the name of the new aks cluster"
}

variable "aks_cluster_location" {
  default = "australiaeast"
  description = "the location of the new aks cluster"
}

variable "virtualnetwork_name" {
  default = "Net2"
  description = "the name of the virtual network where the new aks cluster will be created"
}

variable "aks_cluster_version" {
  default = "1.16.7"
  description = "the version of the new aks cluster"
}

variable "aks_node_number" {
  default = 1
  description = "the number of worker nodes for the new aks cluster"
}

variable "subnet_id" {
  default = "/subscriptions/7d32b47FUCKFUCKFUCKFUCK9d85e3/resourceGroups/leaonow/providers/Microsoft.Network/virtualNetworks/Net2/subnets/sub1"
  description = "the subnet id where the nodes will be created"
}

variable "network_plugin" {
  default = "kubenet"
}

variable "network_policy" {
  default = "calico"
}

variable "lb_sku" {
  default = "standard"
}

variable "dns_prefix" {
  default = "leoAKS"
}
