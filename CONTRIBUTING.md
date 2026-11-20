# Contributing to Movie Info

Thanks for taking the time to contribute. This document explains how to propose changes and what a good contribution looks like.

## Ground rules

- Be respectful. All participation is covered by our [Code of Conduct](CODE_OF_CONDUCT.md).
- Search [existing issues](https://github.com/ismailbentabett/Movie-Info/issues) before opening a new one.
- For anything larger than a small fix, open an issue first so the approach can be agreed before you invest time.
- Security problems must **not** be reported in public issues. Follow [SECURITY.md](SECURITY.md) instead.

## Development setup

```bash
git clone https://github.com/ismailbentabett/Movie-Info.git
cd Movie-Info
flutter pub get
flutter run
```

## Workflow

1. Fork the repository and create a branch from `main`:
   `git checkout -b feat/short-description`
2. Make focused, incremental commits.
3. Keep pull requests small and scoped to a single concern.
4. Open a pull request against `main` and fill in the template.

### Branch naming

| Prefix      | Use for                               |
|-------------|---------------------------------------|
| `feat/`     | New functionality                     |
| `fix/`      | Bug fixes                             |
| `docs/`     | Documentation only                    |
| `refactor/` | Code changes with no behaviour change |
| `chore/`    | Tooling, dependencies, housekeeping   |

### Commit messages

This project follows [Conventional Commits](https://www.conventionalcommits.org/):

```
feat: add input validation
fix: handle an edge case without crashing
docs: clarify quick-start steps
```

## Before you open a pull request

- `flutter analyze` reports no new issues in the files you touched.
- `dart format` has been applied to changed Dart files.
- The app builds and runs on at least one target (Android, iOS or web).
- Documentation (README, comments) is updated if behaviour changed.

## Reporting bugs and requesting features

Use the issue forms under [Issues → New issue](https://github.com/ismailbentabett/Movie-Info/issues/new/choose). Clear reproduction steps and environment details make issues far easier to act on.

## License

By contributing, you agree that your contributions will be licensed under the [MIT License](LICENSE).
