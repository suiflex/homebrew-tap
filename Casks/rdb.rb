# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.49.0, https://github.com/suiflex/rdb/releases/download/v0.49.0, 225376be4ad582cc69b6456de390357a585334b039a2020cef5b88ceaba48a79, c4e66fc316cbeccb74938033ed37bd2625f7f8fbbae514cb14c3063a4ddf89fd) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.49.0"

  on_arm do
    sha256 "225376be4ad582cc69b6456de390357a585334b039a2020cef5b88ceaba48a79"
    url "https://github.com/suiflex/rdb/releases/download/v0.49.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "c4e66fc316cbeccb74938033ed37bd2625f7f8fbbae514cb14c3063a4ddf89fd"
    url "https://github.com/suiflex/rdb/releases/download/v0.49.0/rdb-x86_64-apple-darwin.dmg"
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
