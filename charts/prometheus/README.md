See https://github.com/prometheus-community/helm-charts for the upstream project

# GravitySketch

This fork exists to blacklist various apiserver_* and other metrics, it should
follow upstream in most other ways and making changes here should be avoided
whenever possible. Patching a chart is painful, so forking is simpler (and using
a locally vendored copy with a file:// repository is also painful, thus here we
are).

## How to make changes

Create a new branch from the desired point in time with the name
`gravitysketch/<tag-branch-or-sha-name>` (e.g. if branching changing the
`prometheus-22.6.6` tag create a branch called
`gravitysketch/prometheus-22.6.6`), and make changes there to simplify
syncing/rebasing.
