moved {
  from = azurerm_user_assigned_identity.uai
  to   = azurerm_user_assigned_identity.this
}

moved {
  from = azurerm_federated_identity_credential.creds
  to   = azurerm_federated_identity_credential.this
}
