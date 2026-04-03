output "config" {
  description = "Contains all user assigned identity configuration"
  value       = azurerm_user_assigned_identity.uai
}

output "federated_credentials" {
  description = "Contains all federated identity credential configurations"
  value       = azurerm_federated_identity_credential.creds
}
