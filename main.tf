resource "auth0_resource_server" "ndsq_api" {
  name        = "NDSquared API (Managed by Terraform)"
  identifier  = "https://api.ndsquared.net"
  signing_alg = "RS256"

  scopes {
    value       = "read:connectfour"
    description = "Read connect four endpoint"
  }

  allow_offline_access                            = true
  token_lifetime                                  = 8600
  skip_consent_for_verifiable_first_party_clients = true
}
