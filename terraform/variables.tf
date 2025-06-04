variable "location" {
  description = "Azure region"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
}

variable "acr_name" {
  description = "Name of the ACR instance"
}

variable "key_vault_name" {
  description = "The name of the Key Vault"
}

variable "jwt_secret" {
  description = "The JWT Secret value"
  type        = string
  sensitive   = true
}