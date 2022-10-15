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

resource "github_issue_label" "issue_label_bug" {
  repository  = github_repository.github.name
  name        = "bug"
  description = "Something isn't working"
  color       = "d73a4a"
}

resource "github_issue_label" "issue_label_documentation" {
  repository  = github_repository.github.name
  name        = "documentation"
  description = "Improvements or additions to documentation"
  color       = "0075ca"
}

resource "github_issue_label" "issue_label_duplicate" {
  repository  = github_repository.github.name
  name        = "duplicate"
  description = "This issue or pull request already exists"
  color       = "cfd3d7"
}

resource "github_issue_label" "issue_label_enhancement" {
  repository  = github_repository.github.name
  name        = "enhancement"
  description = "New feature or request"
  color       = "a2eeef"
}

resource "github_issue_label" "issue_label_good_first_issue" {
  repository  = github_repository.github.name
  name        = "good first issue"
  description = "Good for newcomers"
  color       = "7057ff"
}

resource "github_issue_label" "issue_label_help_wanted" {
  repository  = github_repository.github.name
  name        = "help wanted"
  description = "Extra attention is needed"
  color       = "008672"
}

resource "github_issue_label" "issue_label_invalid" {
  repository  = github_repository.github.name
  name        = "invalid"
  description = "This doesn't seem right"
  color       = "e4e669"
}

resource "github_issue_label" "issue_label_question" {
  repository  = github_repository.github.name
  name        = "question"
  description = "Further information is requested"
  color       = "d876e3"
}

resource "github_issue_label" "issue_label_wontfix" {
  repository  = github_repository.github.name
  name        = "wontfix"
  description = "This will not be worked on"
  color       = "ffffff"
}

variable "github_token" {
  type        = string
  description = "required: GitHub Personal Access Token"
}