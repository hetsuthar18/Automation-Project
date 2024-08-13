resource "azurerm_network_interface" "nic" {
  name                = "windowsvm-nic"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
  tags = var.tags
}
resource "azurerm_availability_set" "windows_avs" {
  name                = "windows-avs1482"
  location            = var.location
  resource_group_name = var.rg_name

  tags = var.tags
}

resource "azurerm_managed_disk" "windows_disk" {
  name                 = "win-disk-1482"
  location             = var.location
  resource_group_name  = var.rg_name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 30
}



resource "azurerm_public_ip" "pip" {

  name                = "windowsvm-pip"
  location            = var.location
  resource_group_name = var.rg_name
  allocation_method   = "Dynamic"
  tags = var.tags
}
resource "azurerm_virtual_machine" "windows_vm" {
  name                = "windowsvm1482"
  
  location            = var.location
  resource_group_name = var.rg_name
  availability_set_id = var.avset_id
  network_interface_ids = [var.nic_id]
  vm_size = var.vm_size

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
    
  }

  storage_os_disk {
    name              = "1482-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "windowsvm"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_windows_config {
    provision_vm_agent        = true
    enable_automatic_upgrades = true
  }

  tags = var.tags
  
}
