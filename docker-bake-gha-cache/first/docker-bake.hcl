group "default" {
  targets = ["first"]
}

variable "PWD" {
  default=""
}

target "first" {
  context = "${PWD}/docker-bake-gha-cache/first"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/djbender/github-actions-experiments:docker-bake-gha-cache-first"]
  platforms = ["linux/amd64", "linux/arm64"]
  cache-from = [
    "type=gha"
  ]
  cache-to = [
    "type=gha,mode=max"
  ]
}
