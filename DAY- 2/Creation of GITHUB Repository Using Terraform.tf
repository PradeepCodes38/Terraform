terraform {
  required_providers {
    # GitHub provider configuration
    github = {
      source  = "integrations/github"  # Provider source
      version = "4.6.0"  # Provider version
    }
  }
}

provider "github" {
  token = "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"  # GitHub personal access token
}

# GitHub repository resource
resource "github_repository" "Example" {
  name       = "Terraform-Repo"  # Name of the repository
  visibility = "public"  # Visibility of the repository
}
