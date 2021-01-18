resource "azurerm_virtual_network" "network" {
  name                = "vnet-${var.environment}"
  address_space       = ["10.10.0.0/16"]
  location            = azurerm_resource_group.vbdgroup.location
  resource_group_name = azurerm_resource_group.vbdgroup.name
}

resource "azurerm_subnet" "network" {
  name                 = "webserver-${var.environment}"
  resource_group_name  = azurerm_resource_group.vbdgroup.name
  virtual_network_name = azurerm_virtual_network.network.name
  address_prefixes     = ["10.10.0.0/24"]
}

resource "azurerm_network_interface" "linux_nic" {
  name                = "linuxvm-nic-${var.environment}"
  location            = azurerm_resource_group.vbdgroup.location
  resource_group_name = azurerm_resource_group.vbdgroup.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.network.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "win_nic" {
  name                = "winvm-${var.environment}"
  location            = azurerm_resource_group.vbdgroup.location
  resource_group_name = azurerm_resource_group.vbdgroup.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.network.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource azurerm_network_security_group "bad_sg" {
  location            = var.location
  name                = "sg-${var.environment}"
  resource_group_name = azurerm_resource_group.vbdgroup.name

  security_rule {
    access                 = "Allow"
    direction              = "Inbound"
    name                   = "AllowSSH"
    priority               = 200
    protocol               = "TCP"
    source_address_prefix  = "*"
    source_port_range      = "*"
    destination_port_range = "22-22"
    destination_address_prefix = "*"
  }

  security_rule {
    access                 = "Allow"
    direction              = "Inbound"
    name                   = "AllowRDP"
    priority               = 300
    protocol               = "TCP"
    source_address_prefix  = "*"
    source_port_range      = "*"
    destination_port_range = "3389-3389"
    destination_address_prefix = "*"
  }
}