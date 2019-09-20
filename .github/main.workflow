workflow "Push" {
  on = "push"
  resolves = "VerifyLabels"
}

workflow "Label change" {
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