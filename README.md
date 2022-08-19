# GitHub Actions Experiments

A repo contianing individual code experiements to verify my understanding of
GitHub Actions.

## [docker-bake-gha-cache]

This experiement uses [docker/bake-action] and [buildkit's gha cache] across
two sequential jobs in [docker-bake-gha-cache.yml] to verify that gha cache can
be used more than once in a workflow, via the `scope` parameter. Incorrect
usage of the scope parameter will result in caches being clobbered by the most
recent cache. Scope defaults to `buildkit` for what its worth.

[docker-bake-gha-cache]: https://github.com/djbender/github-actions-experiments/tree/d0f6c4853f917b9199d5ce79d97930ae64a1ae6a/docker-bake-gha-cache
[docker/bake-action]: https://github.com/docker/bake-action
[buildkit's gha cache]: https://github.com/moby/buildkit/tree/35fb6c8e1a6fb660cd7194363a4179888d07f278#github-actions-cache-experimental
[docker-bake-gha-cache.yml]: https://github.com/djbender/github-actions-experiments/blob/d0f6c4853f917b9199d5ce79d97930ae64a1ae6a/.github/workflows/docker-bake-gha-cache.yml
