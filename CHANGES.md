## unreleased

### Added

- Changelog file for the template.
- Changelog file for the project itself.
- Spell config for vscode.

### Changed

- Use a changelog format that works well with `dune-release`.
- Open systematically the modules that constitute the default scope within a lib
  (Base, Stdio, Expect_test_helpers) via the `flags` setting in the lib's dune.
  file, rather than opening them at the top of every file in the directory.
- Replace Core by Base. Use Stdio when needed and Expect_test_helpers_base in
  tests.
- Using spin.0.8.4-preview in the workflow actions.

### Fixed

- Fixed doc url so it passes `dune-release lint`.
- Make the templates' binary -version outputs the correct package version.

### Removed
