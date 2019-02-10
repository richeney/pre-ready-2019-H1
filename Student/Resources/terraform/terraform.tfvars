<<<<<<< HEAD
aks_arm_client_id = "9503e915-cdb8-486c-a60e-60ae96a6fd07" # the SPN for AKS (its pwd is in VMPassword secret in kv)
la_workspace_name = "rpjchacklogworkspace"
la_resource_group = "rpjc"
keyvault_uri = "https://rpjcMonWorkshopVault.vault.azure.net/"
ssh_keyvault_secret_name = "sshkey-pub"
spn_keyvault_secret_name = "VMPassword"


#########################################
##                                     ##
##          AKS variables              ##
##                                     ##
#########################################

aks_resource_group = "rpjc-AKS"
location = "eastus"
cluster_name = "rpjcaksdemo"
k8s_version = "1.11.5"
dns_prefix = "rpjcaksdemo"
agent_count = 3
agent_pool_name = "rpjctfaks"
admin_user = "demouser"
vm_size = "Standard_B2ms"
aksvnet_resource_group ="rpjc"
aksvnet ="rpjcVnet"
aks_subnetId = "/subscriptions/2ca40be1-7e80-4f2b-92f7-06b2123a68cc/resourceGroups/rpjc/providers/Microsoft.Network/virtualNetworks/rpjcVnet/subnets/aksSubnetName"
=======
aks_arm_client_id = "<Enter the SPN Application Id here>" # the SPN for AKS (its pwd is in VMPassword secret in kv)
la_workspace_name = "<Enter Log Analytics existing Workspace name here>"
la_resource_group = "<Enter Resourcegroup Name here>"
keyvault_uri = "https://<Keyvault Name here>.vault.azure.net/"
ssh_keyvault_secret_name = "sshkey-pub"
spn_keyvault_secret_name = "VMPassword"


#########################################
##                                     ##
##          AKS variables              ##
##                                     ##
#########################################

aks_resource_group = "<Enter Resourcegroup Name Here>-AKS"
location = "eastus"
cluster_name = "<Enter Resourcegroup Name Here>aksdemo"
k8s_version = "1.11.5"
dns_prefix = "<Enter Resourcegroup Name Here>aksdemo"
agent_count = 3
agent_pool_name = "<Enter Resourcegroup Name Here>tfaks"
admin_user = "demouser"
vm_size = "Standard_D2_v3"
aksvnet_resource_group ="<Enter Resourcegroup Name here>"
aksvnet ="<Enter Resourcegroup Name here>Vnet"
aks_subnetId = "/subscriptions/<Enter Subscription ID here>/resourceGroups/<Enter Resourcegroup Name Here>/providers/Microsoft.Network/virtualNetworks/<Enter Resourcegroup Name Here>Vnet/subnets/aksSubnetName"
>>>>>>> d3eea86183c95f5685a248b26345996080576231
