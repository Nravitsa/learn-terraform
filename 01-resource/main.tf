# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "838d8d5b-1157-4504-a71d-1ef48775bbe3"
}


resource "azurerm_virtual_machine" "test" {
  name                  = "$test-vm"
  location              = "East US"
  resource_group_name   = "project-ecom"
  network_interface_ids = ["/subscriptions/838d8d5b-1157-4504-a71d-1ef48775bbe3/resourceGroups/project-ecom/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
  vm_size               = "Standard_D2s_v3"

  delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    id = "/subscriptions/838d8d5b-1157-4504-a71d-1ef48775bbe3/resourceGroups/project-ecom/providers/Microsoft.Compute/images/local-devops-practice"
  }

  storage_os_disk {
    name              = "test-vm-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "test-vm"
    admin_username = "tushar"
    admin_password = "tushar@12345"
  }
}