resource "null_resource" "display_hostname" {
  for_each = { for idx, val in var.linux_vm_names : val => idx }

  depends_on = [
    azurerm_virtual_machine.vm
  ]

}

# provisioner "local-exec" {
#     command = "echo Hello"
#   }


resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "echo Hello from null_resource example1"
  }
}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "echo Hello from null_resource example2"
  }
}

resource "null_resource" "example3" {
  provisioner "local-exec" {
    command = "echo Hello from null_resource example3"
  }
}

resource "null_resource" "example4" {
  provisioner "local-exec" {
    command = "echo Hello from null_resource example4"
  }
}

# resource "null_resource" "example5" {
#   provisioner "local-exec" {
#     command = "echo Hello from null_resource example5"
#   }
# }


