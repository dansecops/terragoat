resource random_string "password" {
  length      = 16
  special     = false
  min_lower   = 1
  min_numeric = 1
  min_upper   = 1
}

resource azurerm_linux_virtual_machine "linux_machine" {
  admin_username                  = "azureadmin"
  admin_password                  = random_string.password.result
  location                        = var.location
  name                            = "linuxvm01"
  network_interface_ids           = [azurerm_network_interface.linux_nic.id]
  resource_group_name             = azurerm_resource_group.vbdgroup.name
  size                            = "Standard_B2s"
  disable_password_authentication = false
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  tags = {
    vuln  = true
    environment = var.environment
  }
}

resource azurerm_windows_virtual_machine "windows_machine" {
  admin_password        = random_string.password.result
  admin_username        = "azureadmin"
  location              = var.location
  name                  = "winvm01"
  network_interface_ids = [azurerm_network_interface.win_nic.id]
  resource_group_name   = azurerm_resource_group.vbdgroup.name
  size                  = "Standard_B2s"
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  tags = {
    vuln  = true
    environment = var.environment
  }
}

resource "azurerm_user_assigned_identity" "example" {
  resource_group_name = azurerm_resource_group.vbdgroup.name
  location            = azurerm_resource_group.vbdgroup.location

  name = "dg-managed-identity"
}