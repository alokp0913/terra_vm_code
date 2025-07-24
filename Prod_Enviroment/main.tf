module "resource_group" {
  source = "../infra_resource/azurerm_resource_group"
  resource_group_name = "todo-rgg0013"
  location = "japan east"
}

module "resource_group" {
  source = "../infra_resource/azurerm_resource_group"
  resource_group_name = "alok-rgg0013"
  location = "japan east"
}
module "resource_group" {
  source = "../infra_resource/azurerm_resource_group"
  resource_group_name = "alok-20001"
  location = "japan east"
}

module "Virtual_Network" {
    depends_on = [ module.resource_group ]
    source = "../infra_resource/azurerm_vnet"
    virtual_network_name = "todo-vnet0013"
    resource_group_name = "todo-rgg0013"
    location = "japan east"
    address_space = ["192.168.1.0/24"]
  
}

# module "fe-subnet" {
#     depends_on = [ module.Virtual_Network ]
#     source = "../infra_resource/azurerm_subnet"
#     subnet_name = "todo-fesubnet-001"
#     resource_group_name = "todo-rgg0013"
#     virtual_network_name = "todo-vnet0013"
#     address_prefixes = ["192.168.1.0/26"]
  
# }
# module "be-subnet" {
#     depends_on = [ module.Virtual_Network ]
#   source = "../infra_resource/azurerm_subnet"
#     subnet_name = "todo-besubnet-001"
#     resource_group_name = "todo-rgg0013"
#     virtual_network_name = "todo-vnet0013"
#     address_prefixes = ["192.168.1.64/26"]
# }

# module "mssql_server" {
#   depends_on = [ module.resource_group ]
#  source = "../infra_resource/mssql_server"
#  resource_group_name = "todo-rgg0013"
#  mssql_server_name = "todo-mssqlserver0013"
#  location = "japan east"
  
# }

# module "mssql_database" {
#     depends_on = [ module.mssql_server ]
#   source = "../infra_resource/mssql_database"
#   mssql_database_name = "todo-mssql-db0013"
#   resource_group_name = "todo-rgg0013"
#   mssql_server_name   = "todo-mssqlserver0013"
# }

# module "fe_publicip" {
#   depends_on = [ module.resource_group ]
#     source = "../infra_resource/azurerm_public_ip"
#   public_ip_name = "todo-fe-ip0013"
#   resource_group_name = "todo-rgg0013"
#   location = "japan east"
# }



# module "be_publicip" {
#   depends_on = [ module.resource_group ]
#     source = "../infra_resource/azurerm_public_ip"
#   public_ip_name = "todo-be-ip0013"
#   resource_group_name = "todo-rgg0013"
#   location = "japan east"
# }



# module "fe-vm" {
#   depends_on = [ module.fe-subnet,module.fe_publicip ]
#     source = "../infra_resource/azurerm_virtual_machine"
#   resource_group_name = "todo-rgg0013"
#   nic_name = "fe-nic0013"
#   location = "japan east"
#   ipconfig_name = "fe-ipconfig0013"
#   virtual_machine_name = "todo-fe-vm0013"
#   image_publisher = "Canonical"
#   image_offer = "0001-com-ubuntu-server-focal"
#   image_sku = "20_04-lts"
#   image_version = "latest"
#   subnet_name = "todo-fesubnet-001"
#   virtual_network_name = "todo-vnet0013"
#   public_ip_name = "todo-fe-ip0013"
#   vm_username = "fe-vm-UserName"
#   vm_password = "fe-vm-Password"

# }

# module "be-vm" {
#   depends_on = [ module.be-subnet,module.be_publicip ]
#     source = "../infra_resource/azurerm_virtual_machine"
#     resource_group_name = "todo-rgg0013"
#     nic_name = "be-nic0013"
#     location = "japan east"
#     ipconfig_name = "be-ipconfig0013"
#     virtual_machine_name = "todo-be-vm0013"
#     image_publisher = "Canonical"
#     image_offer = "0001-com-ubuntu-server-focal"
#     image_sku = "20_04-lts"
#     image_version = "latest"
#     subnet_name = "todo-besubnet-001"
#     virtual_network_name = "todo-vnet0013"
#     public_ip_name = "todo-be-ip0013"
#     vm_username = "be-vm-UserName"
#     vm_password = "be-vm-Password"
  
# }
