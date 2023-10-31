# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Changelog file for the template
- Changelog file for the project itself
- Spell config for vscode

### Changed

- Open systematically the modules that constitute the default scope within a lib
  (Base, Stdio, Expect_test_helpers) via the `flags`` setting in the lib's dune
  file, rather than opening them at the top of every file in the directory
- Replace Core by Base. Use Stdio when needed and Expect_test_helpers_base in
  tests
- Using spin.0.8.4-preview in the workflow actions

### Fixed
### Removed
