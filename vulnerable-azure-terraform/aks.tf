# resource azurerm_kubernetes_cluster "k8s_cluster" {
#   dns_prefix          = "vbdk8s-${var.environment}"
#   location            = var.location
#   name                = "vbdk8s-aks-${var.environment}"
#   resource_group_name = azurerm_resource_group.vbdgroup.name
#   identity {
#     type = "SystemAssigned"
#   }
#   default_node_pool {
#     name       = "default"
#     vm_size    = "Standard_D2s_v3"
#     node_count = 2
#   }
#   addon_profile {
#     oms_agent {
#       enabled = false
#     }
#     kube_dashboard {
#       enabled = true
#     }
#   }
#   role_based_access_control {
#     enabled = false
#   }
# }