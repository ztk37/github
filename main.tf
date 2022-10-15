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
}

variable "github_token" {
  type        = string
  description = "required: GitHub Personal Access Token"
}