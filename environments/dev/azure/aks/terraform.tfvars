resource_group_name = var.resource_group_name
resource_group_netw = var.resource_group_name_netw
location            = "North Europe"
vnet_001_name       = "xyz-dev-vnet"
subnet_001_name     = "xyz-dev-snet-app"
subnet_002_name     = "xyz-dev-snet-aks"
subnet_003_name     = "xyz-dev-snet-k8s"
aks_001_custer = {
  name                           = "aksappdev01"
  dns_prefix                     = "env0-aks"
  private_cluster_enabled        = false
  node_resource_group            = "XYZ-DEV-APP-AKS-INT-RG"
  sku_tier                       = "Free"
  private_dns_zone_id            = null
  kubernetes_version             = "1.21.2"
  dnf_name                       = "default"
  dnf_node_count                 = 7
  dnf_vm_size                    = "Standard_E8a_v4"
  dnf_os_disk_size_gb            = 64
  dnf_os_disk_type               = "Managed"
  dnf_availability_zones         = []
  dnf_vnet_subnet_id             = null
  np_network_plugin              = "azure"
  np_network_policy              = "azure"
  np_load_balancer_sku           = "standard"
  idt_type                       = "SystemAssigned"
  idt_user_assigned_identity_id  = null
  oms_enabled                    = false
}
aks_001_node_pool_list = [
  {
    name       = "nodepool001"
    vm_size    = "Standard_E8a_v4" #64GB de RAM e 8vCPU
    node_count = 9
  }
]
aks_001_role_based_access_control = [
  {
    enabled = true
    azure_active_directory = {
      managed                = true
      admin_group_object_ids = ["group_id"]
      azure_rbac_enabled     = true
    }
  }
]
tags = {
  "ManagedBy" = "Terraform"
}
