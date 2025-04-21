output "bastion_host_linuxvm_public_ip_address" {
  description = "Bation Host LinuxVM Public IP Address"
  value = azurerm_public_ip.bastion_host_publicip.ip_address
}