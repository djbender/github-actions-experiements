group "default" {
  targets = ["demo"]
}

variable "PWD" {
  default=""
}

target "demo" {
  context = "${PWD}/docker-bake-gha-cache"
  tags = ["ghcr.io/djbender/github-actions-experiments:docker-bake-gha-cache"]
  platforms = ["linux/amd64", "linux/arm64"]
  cache-from = [
    "type=gha"
  ]
  cache-to = [
    "type=gha,mode=max"
  ]
}
