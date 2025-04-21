output "web_linuxvm_private_ip_address_list" {
  description = "Web Linux Virtual Machine Private IP"
  value = [for vm in azurerm_linux_virtual_machine.web_linuxvm: vm.private_ip_address]
}

output "web_linuxvm_private_ip_address_map" {
  description = "Web Linux Virtual Machine Private IP"
  value = {for vm in azurerm_linux_virtual_machine.web_linuxvm: vm.name => vm.private_ip_address}
}

output "web_linuxvm_private_ip_address_keys_function" {
  description = "Web Linux Virtual Machine Private IP"
  value = keys({for vm in azurerm_linux_virtual_machine.web_linuxvm: vm.name => vm.private_ip_address})
}

output "web_linuxvm_private_ip_address_values_function" {
  description = "Web Linux Virtual Machine Private IP"
  value = values({for vm in azurerm_linux_virtual_machine.web_linuxvm: vm.name => vm.private_ip_address})
}

output "web_linuxvm_network_interface_id_list" {
  description = "Web Linux VM Network Interface ID"
  value = [for vm, nic in azurerm_network_interface.web_linuxvm_nic: nic.id]
}

output "web_linuxvm_network_interface_id_map" {
  description = "Web Linux VM Network Interface ID"
  value = {for vm, nic in azurerm_network_interface.web_linuxvm_nic: vm => nic.id}
}


