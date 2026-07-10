# homebrew-tap

Homebrew tap for [RDBS](https://github.com/suiflex/rdb) — a native, cross-platform
database manager (PostgreSQL, MySQL, Redis, MongoDB, SQLite, Cassandra).

Supports macOS (Apple Silicon + Intel) and Linux.

## Install

```bash
brew install suiflex/tap/rdbs
```

Or add the tap first, then install:

```bash
brew tap suiflex/tap
brew install rdbs
```

## Upgrade

```bash
brew update
brew upgrade rdbs
```

## Uninstall

```bash
brew uninstall rdbs
```

## How it works

`Formula/rdbs.rb` is generated automatically on every RDBS release by the
[`release-build`](https://github.com/suiflex/rdb/blob/develop/.github/workflows/release-build.yml)
workflow, which downloads the release tarballs, computes their SHA-256, and
pushes an updated formula here. Do not hand-edit `Formula/rdbs.rb` — changes
are overwritten on the next release.
