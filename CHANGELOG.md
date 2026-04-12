# Changelog

## 1.0.0 (2026-04-12)


### ⚠ BREAKING CHANGES

* **docker:** The `UID` and `GID` environment variables have been replaced with `PUID` and `PGID` respectively to align with common containerization practices. The container's working directory has been changed to `/app`.

### Features

* add GitHub Actions workflows for automated releases and dependency updates ([e84cf1c](https://github.com/diareuse/minecraft/commit/e84cf1c959824e38873d2e1c41b99f7f9993883a))
* **ci:** add Release Please workflow for automated versioning and releases ([0cc3a41](https://github.com/diareuse/minecraft/commit/0cc3a4118910c6f98a287a80b4c4b695806ae1eb))
* **docker:** add initial Docker setup for Fabric server ([c9d9c9c](https://github.com/diareuse/minecraft/commit/c9d9c9cdc0634224981b44e0bac780fc64b18931))
* **docker:** add multi-arch Java 17 and 21 Docker images ([71c9de4](https://github.com/diareuse/minecraft/commit/71c9de414ddaf13645f86e56e18c28fcc5ec471b))
* **docker:** improve user/group handling and container structure ([f495861](https://github.com/diareuse/minecraft/commit/f4958614f51c7ecf45a39bda77d4431d5e99d9ce))
* **docker:** introduce Java 25 Docker image and refactor build structure ([f6b9043](https://github.com/diareuse/minecraft/commit/f6b904350365205a31063c494cef178ecae13646))


### Bug Fixes

* **lifecycle:** Gracefully handle SIGTERM and SIGINT ([1ffbac6](https://github.com/diareuse/minecraft/commit/1ffbac6ef44c9e10b2809c7bde92ff1b4b759f93))
