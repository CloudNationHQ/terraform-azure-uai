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
