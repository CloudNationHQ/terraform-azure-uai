# user assigned identity
resource "azurerm_user_assigned_identity" "uai" {
  name = var.config.name

  resource_group_name = coalesce(
    lookup(
      var.config, "resource_group_name", null
    ), var.resource_group_name
  )

  location = coalesce(
    lookup(var.config, "location", null
    ), var.location
  )

  tags = coalesce(
    var.config.tags, var.tags
  )
}

# federated identity credentials
resource "azurerm_federated_identity_credential" "creds" {
  for_each = var.config.federated_credentials

  name                = each.key
  resource_group_name = azurerm_user_assigned_identity.uai.resource_group_name
  parent_id           = azurerm_user_assigned_identity.uai.id
  audience            = each.value.audience
  issuer              = each.value.issuer
  subject             = each.value.subject
}
