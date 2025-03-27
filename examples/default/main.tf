module "naming" {
  source  = "cloudnationhq/naming/azure"
  version = "~> 0.23"

  suffix = ["demo", "dev"]
}

module "rg" {
  source  = "cloudnationhq/rg/azure"
  version = "~> 2.0"

  groups = {
    demo = {
      name     = module.naming.resource_group.name_unique
      location = "westeurope"
    }
  }
}

module "identity" {
  # source  = "cloudnationhq/sa/azure"
  # version = "~> 3.0"
  source = "../../"

  config = {
    name           = module.naming.user_assigned_identity.name
    location       = module.rg.groups.demo.location
    resource_group = module.rg.groups.demo.name
  }
}
