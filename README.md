# homebrew-tap

Homebrew tap for [RDB](https://github.com/suiflex/rdb) — a native, cross-platform
database manager (PostgreSQL, MySQL, Redis, MongoDB, SQLite, Cassandra).

Supports macOS (Apple Silicon + Intel) and Linux.

> Formerly published as `rdbs`. The old formula has been removed — install `rdb`
> instead. If you previously installed `rdbs`, run `brew uninstall rdbs` first.

## Install

```bash
brew install suiflex/tap/rdb
```

Or add the tap first, then install:

```bash
brew tap suiflex/tap
brew install rdb
```

## Upgrade

```bash
brew update
brew upgrade rdb
```

## Uninstall

```bash
brew uninstall rdb
```

## How it works

`Formula/rdb.rb` is generated automatically on every RDB release by the
[`release-build`](https://github.com/suiflex/rdb/blob/develop/.github/workflows/release-build.yml)
workflow, which downloads the release tarballs, computes their SHA-256, and
pushes an updated formula here. Do not hand-edit `Formula/rdb.rb` — changes
are overwritten on the next release.
