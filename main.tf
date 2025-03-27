# user assigned identity
resource "azurerm_user_assigned_identity" "uai" {

  name = var.config.name

  resource_group_name = coalesce(
    lookup(
      var.config, "resource_group", null
    ), var.resource_group
  )

  location = coalesce(
    lookup(var.config, "location", null
    ), var.location
  )

  tags = try(
    var.config.tags, var.tags, null
  )
}
