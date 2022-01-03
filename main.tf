resource "auth0_resource_server" "ndsq_api" {
  name        = "NDSquared API (Managed by Terraform)"
  identifier  = "https://api.ndsquared.net"
  signing_alg = "RS256"

  scopes {
    value       = "read:connectfour"
    description = "Read connect four endpoint"
  }

  enforce_policies                                = true
  token_lifetime                                  = 8600
  skip_consent_for_verifiable_first_party_clients = true
}

resource "auth0_client" "ndsq_app" {
  name     = "NDSquared Application (Managed by Terraform)"
  app_type = "non_interactive"
  allowed_origins = [
    "http://localhost:3000",
    "http://localhost:8000",
    "https://ndsquared.net",
    "https://www.ndsquared.net",
  ]
}

resource "auth0_client_grant" "ndsq_client_grants" {
  client_id = auth0_client.ndsq_app.id
  audience  = auth0_resource_server.ndsq_api.identifier
  scope     = ["read:connectfour"]
}
