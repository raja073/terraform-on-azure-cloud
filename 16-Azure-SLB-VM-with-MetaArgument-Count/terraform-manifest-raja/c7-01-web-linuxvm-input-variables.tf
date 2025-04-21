variable "web_linuxvm_instance_count" {
  description = "Web Linux VM Instance count"
  type = number
  default = 1
}

variable "lb_inbound_nat_ports" {
  description = "Web LB Inbound NAT Ports"
  type = list(string)
  default = [ "1022", "2022", "3022" ]
}