output "kube_config_b64" {
  value     = base64encode(azurerm_kubernetes_cluster.aks.kube_config_raw)
  sensitive = true
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate
  sensitive = true
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "key_vault_uri" {
  value = azurerm_key_vault.key_vault.vault_uri
}

output "key_vault_name" {
    value = azurerm_key_vault.key_vault.name
}

output "resource_group_name" {
    value = azurerm_resource_group.rg.name
}

output "aks_cluster_name" {
    value = azurerm_kubernetes_cluster.aks.name
}

output "acr_name" {
    value = azurerm_container_registry.acr.name
}

output "jwt_secret_value" {
  description = "The value of the JWT secret."
  value       = azurerm_key_vault_secret.jwt.value
  sensitive   = true
}