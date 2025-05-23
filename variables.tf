variable "location" {
  default = "southeastasia"
}

variable "resource_group_name" {
  default = "rg-wid-research"
}

variable "vm_admin_username" {
  default = "azureuser"
}

variable "vm_admin_password" {
  default = "P@ssw0rd1234!" # Untuk testing, sebaiknya pakai `terraform.tfvars` dan jangan upload ke repo
}
