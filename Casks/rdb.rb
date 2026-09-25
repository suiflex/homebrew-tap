# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.48.1, https://github.com/suiflex/rdb/releases/download/v0.48.1, def8bcb95a735359248b98e600d434f2d4e9c611e6f1060c917b0cbd7d88f8d2, 25e1c5e8847dd22f67ae359b08d7bea60591104a1d8bda8ec63249e66b1db277) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.48.1"

  on_arm do
    sha256 "def8bcb95a735359248b98e600d434f2d4e9c611e6f1060c917b0cbd7d88f8d2"
    url "https://github.com/suiflex/rdb/releases/download/v0.48.1/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "25e1c5e8847dd22f67ae359b08d7bea60591104a1d8bda8ec63249e66b1db277"
    url "https://github.com/suiflex/rdb/releases/download/v0.48.1/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"

  # The .app is ad-hoc signed (no Apple Developer cert), so Gatekeeper
  # rejects it as "damaged"/"rejected by OS" once macOS re-checks the
  # quarantine flag Homebrew leaves on the download (e.g. opening via
  # Spotlight). Stripping it here is the standard cask workaround short
  # of paid notarization. See suiflex/rdb#184.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/RDB.app"]
  end
end
