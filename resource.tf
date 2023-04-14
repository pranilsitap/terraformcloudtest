resource "azurerm_resource_group" "test" {
  name     = "vadalarg"
  location = "West US"

  tags = {
    environment = var.envtag
  }
}
resource "azurerm_virtual_network" "testvnet" {
  name                = "privatenet"
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
  address_space       = var.addressspace
  
}
resource "azurerm_subnet" "subnet1" {
  name                 = "application"
  resource_group_name  = azurerm_resource_group.test.name
  virtual_network_name = azurerm_virtual_network.testvnet.name
  address_prefixes     = var.subnetp
}