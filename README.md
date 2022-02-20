# Auth0 Infrastructure as Code

This repo manages the following [Auth0](https://auth0.com/) resources:

- `NDSquared` Client Application
- `NDSquared` Resource Server (API)

[Terraform](https://www.terraform.io/) is used to create and manage the Auth0 resources.

## Local development

The following environment variables need to be set:

```
export AUTH0_DOMAIN=""
export AUTH0_CLIENT_ID=""
export AUTH0_CLIENT_SECRET=""
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
```

> The AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY are DigitalOcean Spaces credentials

```
❯ make

help                           View help information
asdf-bootstrap                 Install all tools through asdf-vm
plan                           Preview terraform changes
```
