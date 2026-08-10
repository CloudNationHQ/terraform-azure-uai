output "identity" {
  description = "user assigned identity"
  value       = azurerm_user_assigned_identity.this
}

output "federated_credentials" {
  description = "federated identity credential configurations"
  value       = azurerm_federated_identity_credential.this
}
