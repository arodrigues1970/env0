resource_group_name       = var.resource_group_name
location                  = "North Europe"
tags = {
  "ManagedBy" = "Terraform"
}
vnet_001_name          = var.vnet_name
vnet_001_address_space = ["172.16.0.0/22"]
vnet_001_dns_servers   = ["172.16.0.4"]
subnet_aks = {
  name                                           = "AzureKubernetesSubnet"
  address_prefixes                               = ["172.16.0.0/26"]
  enforce_private_link_endpoint_network_policies = false
}
subnet_db = {
  name                                           = "PostgreSQLSubnet"
  address_prefixes                               = ["172.16.0.64/27"]
  enforce_private_link_endpoint_network_policies = false
}
subnet_vm = {
  name                                           = "AzureVMSubnet"
  address_prefixes                               = ["172.16.1.0/24"]
  enforce_private_link_endpoint_network_policies = false
}
subnet_mngmttools = {
  name                                           = "ManagementToolsSubnet"
  address_prefixes                               = ["172.16.0.96/27"]
  enforce_private_link_endpoint_network_policies = false
}
nsg_001_name                = var.nsg_name

private_dns_zone_001_name         = "xyzint.core"
private_dns_zone_001_soa_record   = []
private_dns_zone_001_records_list = []