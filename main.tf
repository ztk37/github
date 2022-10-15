terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = var.github_token
}

resource "github_repository" "github" {
  name        = "github"
  description = ":construction: :globe_with_meridians: Explore GitHub features"
  topics      = ["terraform", "github", "automation"]

  # note: Currently, GitHub discussions and the wiki can't be managed by the GitHub provider. Maybe in the future.
  has_issues   = true
  has_projects = true
  has_wiki     = true
}

variable "github_token" {
  type        = string
  description = "required: GitHub Personal Access Token"
}