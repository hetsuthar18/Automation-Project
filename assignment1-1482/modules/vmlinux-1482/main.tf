resource "azurerm_availability_set" "avset" {
  name                = "AvSet-1482"
  location            = var.location
  resource_group_name = var.rg_name
  managed             = true
  tags = var.tags
}

resource "azurerm_network_interface" "nic" {

  for_each = { for idx, val in var.linux_vm_names : val => idx }
  name                = "${each.key}-nic"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip[each.key].id
  }
  tags = var.tags
}


resource "azurerm_public_ip" "pip" {
  for_each = { for idx, val in var.linux_vm_names : val => idx }
  name                = "${each.key}-pip"
  location            = var.location
  resource_group_name = var.rg_name
  allocation_method   = "Dynamic"
  
  tags = var.tags
}

resource "azurerm_virtual_machine" "vm" {
  for_each = { for idx, val in var.linux_vm_names : val => idx }
  name                = "${each.key}"
  location            = var.location
  resource_group_name = var.rg_name
  availability_set_id = azurerm_availability_set.avset.id
  network_interface_ids = [azurerm_network_interface.nic[each.key].id]
  vm_size      = var.vm_size
 
  storage_image_reference {
    publisher = "OpenLogic"
    offer     = "CentOS"
    sku       = "8_2"
    version   = "latest"
  }

  storage_os_disk {
    name              = "${each.key}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }


  os_profile {
    computer_name  = "${each.key}"
    admin_username = "hetsuthar.canada@gmail.com"
    admin_password = var.admin_password
  }

  #  # The FQDN for the VM
  # provisioner "local-exec" {
  #   command = "echo ${azurerm_virtual_machine.vm[count.index].fqdn}"
  # }

  os_profile_linux_config {
    disable_password_authentication = false
    #   ssh_keys {
    #     path = "/home/n01651482/.ssh/id_rsa.pub"
    #     # public_key   = file(var.public_key_path)
    #     key_data = var.ssh_public_key
    #  }
  }

  tags = var.tags
}

