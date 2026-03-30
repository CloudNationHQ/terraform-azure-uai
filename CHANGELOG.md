# Changelog

## [2.2.0](https://github.com/CloudNationHQ/terraform-azure-uai/compare/v2.1.0...v2.2.0) (2026-03-30)


### Features

* **deps:** bump github.com/cloudnationhq/az-cn-go-validor in /tests ([#22](https://github.com/CloudNationHQ/terraform-azure-uai/issues/22)) ([f5c420c](https://github.com/CloudNationHQ/terraform-azure-uai/commit/f5c420c0682bd82ee623382ef6fcc73f4775c188))
* **deps:** bump github.com/ulikunitz/xz from 0.5.10 to 0.5.14 in /tests ([#15](https://github.com/CloudNationHQ/terraform-azure-uai/issues/15)) ([b854e67](https://github.com/CloudNationHQ/terraform-azure-uai/commit/b854e672d3930dbe71449e54022dd1ae46b99675))
* **deps:** bump golang.org/x/crypto from 0.36.0 to 0.45.0 in /tests ([#21](https://github.com/CloudNationHQ/terraform-azure-uai/issues/21)) ([f52f7e9](https://github.com/CloudNationHQ/terraform-azure-uai/commit/f52f7e90ec3b267127d48a7542add771a5632b8c))


### Bug Fixes

* add missing isolation_scope property to user assigned identity ([#24](https://github.com/CloudNationHQ/terraform-azure-uai/issues/24)) ([fbae011](https://github.com/CloudNationHQ/terraform-azure-uai/commit/fbae011dacab9574f8d9e22acda06dd8c6158789))

## [2.1.0](https://github.com/CloudNationHQ/terraform-azure-uai/compare/v2.0.0...v2.1.0) (2025-08-18)


### Features

* add support for federated identity credentials ([#14](https://github.com/CloudNationHQ/terraform-azure-uai/issues/14)) ([111b5d1](https://github.com/CloudNationHQ/terraform-azure-uai/commit/111b5d1ea3e8720b63251c6c18b196d1835dc48a))
* **deps:** bump github.com/cloudnationhq/az-cn-go-validor in /tests ([#11](https://github.com/CloudNationHQ/terraform-azure-uai/issues/11)) ([b7ba197](https://github.com/CloudNationHQ/terraform-azure-uai/commit/b7ba19782c04e1a5131a18cee224640f88b343d3))

## [2.0.0](https://github.com/CloudNationHQ/terraform-azure-uai/compare/v1.1.1...v2.0.0) (2025-05-08)


### ⚠ BREAKING CHANGES

* The data structure changed, causing a recreate on existing resources.

### Features

* small refactor ([#9](https://github.com/CloudNationHQ/terraform-azure-uai/issues/9)) ([5bd1ebb](https://github.com/CloudNationHQ/terraform-azure-uai/commit/5bd1ebbc2831e161edfead600fd2c5a65d0f7537))

### Upgrade from v1.1.1 to v2.0.0:

- Update module reference to: `version = "~> 2.0"`
- The property and variable resource_group is renamed to resource_group_name

## [1.1.1](https://github.com/CloudNationHQ/terraform-azure-uai/compare/v1.1.0...v1.1.1) (2025-04-14)


### Bug Fixes

* fix submodule generation from makefile ([#6](https://github.com/CloudNationHQ/terraform-azure-uai/issues/6)) ([6d58289](https://github.com/CloudNationHQ/terraform-azure-uai/commit/6d5828945106bff61cb7d84d0e0f4f1a2522cd18))

## [1.1.0](https://github.com/CloudNationHQ/terraform-azure-uai/compare/v1.0.0...v1.1.0) (2025-03-27)


### Features

* add initial files  ([#1](https://github.com/CloudNationHQ/terraform-azure-uai/issues/1)) ([acb08db](https://github.com/CloudNationHQ/terraform-azure-uai/commit/acb08dbd1a8a011dd6680926db59b2b44de9c668))
* **deps:** bump golang.org/x/net from 0.34.0 to 0.36.0 in /tests ([#5](https://github.com/CloudNationHQ/terraform-azure-uai/issues/5)) ([ad1c8d4](https://github.com/CloudNationHQ/terraform-azure-uai/commit/ad1c8d49223514b1a68e4399897d72620b5945ab))

## [1.1.0](https://github.com/CloudNationHQ/terraform-azure-uai/compare/v1.0.0...v1.1.0) (2025-03-27)


### Features

* add initial files  ([#1](https://github.com/CloudNationHQ/terraform-azure-uai/issues/1)) ([acb08db](https://github.com/CloudNationHQ/terraform-azure-uai/commit/acb08dbd1a8a011dd6680926db59b2b44de9c668))

## 1.0.0 (2025-03-27)


### Features

* add initial files  ([#1](https://github.com/CloudNationHQ/terraform-azure-uai/issues/1)) ([acb08db](https://github.com/CloudNationHQ/terraform-azure-uai/commit/acb08dbd1a8a011dd6680926db59b2b44de9c668))
