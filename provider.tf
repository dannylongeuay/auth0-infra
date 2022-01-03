terraform {
  backend "s3" {
    endpoint                    = "sfo3.digitaloceanspaces.com"
    bucket                      = "ndsq-terraform-state"
    key                         = "infra/auth0.tfstate"
    region                      = "sfo3"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }

  required_providers {
    auth0 = {
      source  = "alexkappa/auth0"
      version = "0.25.0"
    }
  }
}

provider "auth0" {}
