action "Main workflow" {
  on = "pull-request"
  uses = "yogevbd/require-label-action@master"
  args = "bug"
}