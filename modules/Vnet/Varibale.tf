# Web Subnet Name
variable "web_subnet_name" {
  type = string
}
# Web Subnet Address Space
variable "web_subnet_address" {
  type = list(string)
}
## Virtual Network
variable "vnet_name" {
  type = string
}
variable "vnet_cidr" {
  type = list(string)
}
# Azure Resource Group Name
variable "rg_name" {
  type = string
}
# Azure Resources Location
variable "rg_location" {
  type = string
}

