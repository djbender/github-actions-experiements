group "default" {
  targets = ["second"]
}

variable "PWD" {
  default=""
}

target "second" {
  context = "${PWD}/docker-bake-gha-cache/second"
  dockerfile = "Dockerfile"
  tags = ["ghcr.io/djbender/github-actions-experiments:docker-bake-gha-cache-second"]
  platforms = ["linux/amd64", "linux/arm64"]
  cache-from = [
    "type=gha"
  ]
  cache-to = [
    "type=gha,mode=max,scope=second"
  ]
}
