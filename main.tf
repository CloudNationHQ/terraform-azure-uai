# user assigned identity
resource "azurerm_user_assigned_identity" "this" {
  name                = var.identity.name
  resource_group_name = coalesce(var.identity.resource_group_name, var.resource_group_name)
  location            = coalesce(var.identity.location, var.location)
  tags                = coalesce(var.identity.tags, var.tags)

  isolation_scope = var.identity.isolation_scope
}

# federated identity credentials
resource "azurerm_federated_identity_credential" "this" {
  for_each = var.identity.federated_credentials

  name                      = coalesce(each.value.name, each.key)
  user_assigned_identity_id = azurerm_user_assigned_identity.this.id
  audience                  = each.value.audience
  issuer                    = each.value.issuer
  subject                   = each.value.subject
}
