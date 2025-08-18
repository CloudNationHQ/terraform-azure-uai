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
  source  = "cloudnationhq/uai/azure"
  version = "~> 2.0"

  config = {
    name                = module.naming.user_assigned_identity.name
    location            = module.rg.groups.demo.location
    resource_group_name = module.rg.groups.demo.name

    federated_credentials = {
      github = {
        audience = ["api://AzureADTokenExchange"]
        issuer   = "https://token.actions.githubusercontent.com"
        subject  = "repo:myorg/myrepo:ref:refs/heads/main"
      }
      aks = {
        audience = ["api://AzureADTokenExchange"]
        issuer   = "https://oidc.prod.aks.azure.com/your-aks-cluster-id/"
        subject  = "system:serviceaccount:production:workload-sa"
      }
    }
  }
}
