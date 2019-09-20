workflow "Verify labels" {
  on = "push"
  resolves = "VerifyLabels"
}

workflow "Verify labels" {
  on = "label"
  resolves = "VerifyLabels"
}

action "VerifyLabels" {
  uses = "yogevbd/enforce-label-action@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    VALID_LABELS = "bug,enhancement,feature"
  }
}